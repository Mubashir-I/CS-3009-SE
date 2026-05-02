package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.DAO.FormResponseDAO;
import com.nuyron.facultyevaluationsystem.DAO.QuestionnaireDAO;
import com.nuyron.facultyevaluationsystem.models.FormSchedule;
import com.nuyron.facultyevaluationsystem.models.QuestionRecord;
import com.nuyron.facultyevaluationsystem.models.SceneTools;
import com.nuyron.facultyevaluationsystem.models.Session;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class StudentFormFillController {

    @FXML private Label formTitleLabel;
    @FXML private VBox questionsContainer;
    @FXML private Label statusLabel;

    private FormSchedule schedule;
    private List<AnswerCollector> collectors = new ArrayList<>();

    public void initialize() {
        schedule = Session.selectedFormSchedule;
        if (schedule == null || Session.currentUser == null) {
            statusLabel.setText("Invalid session state.");
            return;
        }

        formTitleLabel.setText(schedule.getQuestionnaireName() + " (" + schedule.getCourseCode() + ")");
        loadQuestions();
    }

    private void loadQuestions() {
        List<QuestionRecord> questions = QuestionnaireDAO.getQuestionsForQuestionnaire(schedule.getQuestionnaireId());
        if (questions.isEmpty()) {
            statusLabel.setText("This form has no questions.");
            return;
        }

        for (int i = 0; i < questions.size(); i++) {
            QuestionRecord q = questions.get(i);
            VBox block = new VBox(10);
            block.setStyle("-fx-padding: 15; -fx-background-color: white; -fx-border-color: #ddd; -fx-border-radius: 5; -fx-background-radius: 5;");

            Label qText = new Label((i + 1) + ". " + q.getQuestionText());
            qText.setFont(Font.font("System", FontWeight.BOLD, 14));
            qText.setWrapText(true);
            block.getChildren().add(qText);

            Map<String, String> meta = parseMetadata(q.getTypeMetadata());
            AnswerCollector collector = null;

            switch (q.getQuestionType().toUpperCase()) {
                case "LIKERT":
                    collector = buildLikert(block, q, meta);
                    break;
                case "SLIDER":
                    collector = buildSlider(block, q, meta);
                    break;
                case "BINARY":
                    collector = buildBinary(block, q, meta);
                    break;
                case "TEXT":
                    collector = buildText(block, q, meta);
                    break;
                default:
                    Label err = new Label("Unsupported question type.");
                    err.setTextFill(javafx.scene.paint.Color.RED);
                    block.getChildren().add(err);
            }

            if (collector != null) {
                collectors.add(collector);
            }
            questionsContainer.getChildren().add(block);
        }
    }

    private Map<String, String> parseMetadata(String metadata) {
        Map<String, String> map = new HashMap<>();
        if (metadata == null || metadata.isBlank()) return map;
        String[] pairs = metadata.split("\\|");
        for (String p : pairs) {
            String[] kv = p.split("=", 2);
            if (kv.length == 2) {
                map.put(kv[0].trim(), kv[1].trim());
            }
        }
        return map;
    }

    private AnswerCollector buildLikert(VBox parent, QuestionRecord q, Map<String, String> meta) {
        String optionsStr = meta.getOrDefault("options", "Agree,Disagree");
        String[] options = optionsStr.split(",");
        
        ToggleGroup group = new ToggleGroup();
        VBox optsBox = new VBox(8);
        
        List<RadioButton> radios = new ArrayList<>();
        for (String opt : options) {
            RadioButton rb = new RadioButton(opt.trim());
            rb.setToggleGroup(group);
            optsBox.getChildren().add(rb);
            radios.add(rb);
        }
        parent.getChildren().add(optsBox);

        return () -> {
            RadioButton selected = (RadioButton) group.getSelectedToggle();
            if (selected == null) return null; // Not answered
            
            String ans = selected.getText();
            int idx = radios.indexOf(selected);
            double score = 0;
            if (radios.size() > 1) {
                score = 100.0 * (radios.size() - 1 - idx) / (radios.size() - 1);
            } else {
                score = 100;
            }
            return new FormResponseDAO.ResponseAnswer(q.getQuestionId(), q.getQuestionText(), q.getQuestionType(), q.getPerfFactor(), ans, score);
        };
    }

    private AnswerCollector buildBinary(VBox parent, QuestionRecord q, Map<String, String> meta) {
        String opt1 = meta.getOrDefault("opt1", "Yes");
        String opt2 = meta.getOrDefault("opt2", "No");

        ToggleGroup group = new ToggleGroup();
        HBox optsBox = new HBox(20);
        
        RadioButton rb1 = new RadioButton(opt1);
        RadioButton rb2 = new RadioButton(opt2);
        rb1.setToggleGroup(group);
        rb2.setToggleGroup(group);
        optsBox.getChildren().addAll(rb1, rb2);
        parent.getChildren().add(optsBox);

        return () -> {
            RadioButton selected = (RadioButton) group.getSelectedToggle();
            if (selected == null) return null;
            
            String ans = selected.getText();
            double score = (selected == rb1) ? 100.0 : 0.0;
            return new FormResponseDAO.ResponseAnswer(q.getQuestionId(), q.getQuestionText(), q.getQuestionType(), q.getPerfFactor(), ans, score);
        };
    }

    private AnswerCollector buildSlider(VBox parent, QuestionRecord q, Map<String, String> meta) {
        int min = Integer.parseInt(meta.getOrDefault("minScale", "0"));
        int max = Integer.parseInt(meta.getOrDefault("maxScale", "10"));
        String label = meta.getOrDefault("label", "Rating");

        VBox sliderBox = new VBox(5);
        Label lbl = new Label(label);
        Slider slider = new Slider(min, max, (min + max) / 2.0);
        slider.setShowTickLabels(true);
        slider.setShowTickMarks(true);
        slider.setMajorTickUnit((max - min) / 5.0 > 0 ? (max - min) / 5.0 : 1);
        slider.setBlockIncrement(1);
        slider.setSnapToTicks(true);
        
        Label valueLbl = new Label("Selected: " + (int)slider.getValue());
        slider.valueProperty().addListener((obs, oldV, newV) -> valueLbl.setText("Selected: " + newV.intValue()));

        sliderBox.getChildren().addAll(lbl, slider, valueLbl);
        parent.getChildren().add(sliderBox);

        return () -> {
            double val = slider.getValue();
            double score = 0;
            if (max > min) {
                score = 100.0 * (val - min) / (max - min);
            }
            return new FormResponseDAO.ResponseAnswer(q.getQuestionId(), q.getQuestionText(), q.getQuestionType(), q.getPerfFactor(), String.valueOf((int)val), score);
        };
    }

    private AnswerCollector buildText(VBox parent, QuestionRecord q, Map<String, String> meta) {
        String msg = meta.getOrDefault("message", "Enter your response");
        TextArea ta = new TextArea();
        ta.setPromptText(msg);
        ta.setPrefRowCount(3);
        parent.getChildren().add(ta);

        return () -> {
            String text = ta.getText();
            if (text == null || text.trim().isEmpty()) return null;
            return new FormResponseDAO.ResponseAnswer(q.getQuestionId(), q.getQuestionText(), q.getQuestionType(), q.getPerfFactor(), text.trim(), null);
        };
    }

    @FXML
    private void onSubmitClick() {
        if (schedule == null) return;
        statusLabel.setText("");

        List<FormResponseDAO.ResponseAnswer> answers = new ArrayList<>();
        for (AnswerCollector c : collectors) {
            FormResponseDAO.ResponseAnswer ans = c.collect();
            if (ans == null) {
                statusLabel.setText("Please answer all questions before submitting.");
                return;
            }
            answers.add(ans);
        }

        boolean ok = FormResponseDAO.saveResponse(
                schedule.getScheduleId(),
                Session.currentUser.getUsername(),
                schedule.getDepartment(),
                schedule.getCourseCode(),
                schedule.getQuestionnaireId(),
                schedule.getQuestionnaireName(),
                answers
        );

        if (ok) {
            statusLabel.setText("");
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Success");
            alert.setHeaderText(null);
            alert.setContentText("Your responses have been submitted. Thank you!");
            alert.showAndWait();
            
            try {
                onBackClick();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            statusLabel.setText("Failed to save response. You may have already submitted this form.");
        }
    }

    @FXML
    private void onBackClick() throws IOException {
        SceneTools.changeScene("StudentForms.fxml", statusLabel);
    }

    private interface AnswerCollector {
        FormResponseDAO.ResponseAnswer collect();
    }
}
