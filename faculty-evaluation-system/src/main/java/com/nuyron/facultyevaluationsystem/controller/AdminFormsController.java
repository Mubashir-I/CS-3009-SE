package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.DAO.FormScheduleDAO;
import com.nuyron.facultyevaluationsystem.DAO.QuestionDAO;
import com.nuyron.facultyevaluationsystem.DAO.QuestionnaireDAO;
import com.nuyron.facultyevaluationsystem.models.*;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.geometry.Insets;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.VBox;
import javafx.scene.layout.ColumnConstraints;

import java.util.ArrayList;
import java.util.List;
import java.time.LocalDate;

public class AdminFormsController {

    private static final String[] PERF_FACTORS = {
        "Teaching Quality", "Communication Skills", "Fairness & Assessment",
        "Student Engagement", "Course Content", "Punctuality"
    };

    @FXML private TextArea questionTextArea;
    @FXML private ChoiceBox<String> questionTypeBox;
    @FXML private ChoiceBox<String> questionFactorBox;
    @FXML private VBox questionDynamicArea;
    @FXML private Label addQuestionStatusLabel;

    @FXML private TableView<QuestionRecord> questionsTableView;
    @FXML private TableColumn<QuestionRecord, Integer> qColId;
    @FXML private TableColumn<QuestionRecord, String> qColText;
    @FXML private TableColumn<QuestionRecord, String> qColType;
    @FXML private TableColumn<QuestionRecord, String> qColFactor;

    @FXML private TextField formNameField;
    @FXML private TextArea formDescArea;
    @FXML private TableView<QuestionRecord> availableQuestionsTable;
    @FXML private TableColumn<QuestionRecord, Integer> aqColId;
    @FXML private TableColumn<QuestionRecord, String> aqColText;
    @FXML private TableColumn<QuestionRecord, String> aqColType;
    @FXML private TableColumn<QuestionRecord, String> aqColFactor;
    @FXML private ListView<String> selectedQuestionsList;
    @FXML private Label addFormStatusLabel;
    private final List<Integer> selectedQuestionIds = new ArrayList<>();

    @FXML private TableView<QuestionnaireRecord> formsTableView;
    @FXML private TableColumn<QuestionnaireRecord, Integer> fColId;
    @FXML private TableColumn<QuestionnaireRecord, String> fColName;
    @FXML private TableColumn<QuestionnaireRecord, String> fColDesc;
    @FXML private TableColumn<QuestionnaireRecord, Integer> fColQCount;
    @FXML private TableColumn<QuestionnaireRecord, String> fColCreated;

    @FXML private ComboBox<String> pushFormComboBox;
    @FXML private ComboBox<String> pushDeptComboBox;
    @FXML private ComboBox<String> pushCourseComboBox;
    @FXML private ComboBox<String> pushSemesterComboBox;
    @FXML private DatePicker pushStartDate;
    @FXML private DatePicker pushEndDate;
    @FXML private Label pushStatusLabel;

    private final java.util.Map<String, Integer> formNameToId   = new java.util.HashMap<>();
    private final java.util.Map<String, String>  courseDispToCode = new java.util.HashMap<>();

    @FXML private TableView<FormSchedule> scheduledFormsTableView;
    @FXML private TableColumn<FormSchedule, Integer> fsColId;
    @FXML private TableColumn<FormSchedule, String>  fsColQnaire;
    @FXML private TableColumn<FormSchedule, String>  fsColDept;
    @FXML private TableColumn<FormSchedule, String>  fsColCourse;
    @FXML private TableColumn<FormSchedule, String>  fsColSemester;
    @FXML private TableColumn<FormSchedule, String>  fsColStartDate;
    @FXML private TableColumn<FormSchedule, String>  fsColEndDate;
    @FXML private TableColumn<FormSchedule, String>  fsColStatus;
    @FXML private TableColumn<FormSchedule, String>  fsColCreated;

    public void initialize() {
        setupTab1();
        setupTab2();
        setupTab3();
        setupTab4();
        setupTab5();
        setupTab6();
    }

    private void setupTab1() {
        questionTypeBox.getItems().addAll("LIKERT", "SLIDER", "TEXT", "BINARY");
        questionFactorBox.getItems().addAll(PERF_FACTORS);
    }

    private void setupTab2() {
        qColId.setCellValueFactory(new PropertyValueFactory<>("questionId"));
        qColText.setCellValueFactory(new PropertyValueFactory<>("questionText"));
        qColType.setCellValueFactory(new PropertyValueFactory<>("questionType"));
        qColFactor.setCellValueFactory(new PropertyValueFactory<>("perfFactor"));
        refreshQuestionsTable();
    }

    private void refreshQuestionsTable() {
        ObservableList<QuestionRecord> data =
                FXCollections.observableArrayList(QuestionDAO.getAllQuestions());
        questionsTableView.setItems(data);
    }

    private void setupTab3() {
        aqColId.setCellValueFactory(new PropertyValueFactory<>("questionId"));
        aqColText.setCellValueFactory(new PropertyValueFactory<>("questionText"));
        aqColType.setCellValueFactory(new PropertyValueFactory<>("questionType"));
        aqColFactor.setCellValueFactory(new PropertyValueFactory<>("perfFactor"));
        refreshAvailableQuestionsTable();
    }

    private void refreshAvailableQuestionsTable() {
        ObservableList<QuestionRecord> data =
                FXCollections.observableArrayList(QuestionDAO.getAllQuestions());
        availableQuestionsTable.setItems(data);
    }

    private void setupTab4() {
        fColId.setCellValueFactory(new PropertyValueFactory<>("qnaireId"));
        fColName.setCellValueFactory(new PropertyValueFactory<>("name"));
        fColDesc.setCellValueFactory(new PropertyValueFactory<>("description"));
        fColQCount.setCellValueFactory(new PropertyValueFactory<>("questionCount"));
        fColCreated.setCellValueFactory(new PropertyValueFactory<>("createdAt"));
        refreshFormsTable();
    }

    private void refreshFormsTable() {
        ObservableList<QuestionnaireRecord> data =
                FXCollections.observableArrayList(QuestionnaireDAO.getAllQuestionnaires());
        formsTableView.setItems(data);
    }

    private void setupTab5() {
        refreshPushFormComboBox();
        refreshPushDeptComboBox();
        populateSemesterComboBox();
    }

    private void refreshPushFormComboBox() {
        formNameToId.clear();
        pushFormComboBox.getItems().clear();
        for (String[] row : QuestionnaireDAO.getAllQuestionnaireNames()) {
            formNameToId.put(row[1], Integer.parseInt(row[0]));
            pushFormComboBox.getItems().add(row[1]);
        }
    }

    private void refreshPushDeptComboBox() {
        pushDeptComboBox.getItems().clear();
        pushDeptComboBox.getItems().addAll(FormScheduleDAO.getDepartments());
        pushCourseComboBox.getItems().clear();
    }

    private void populateSemesterComboBox() {
        pushSemesterComboBox.getItems().clear();
        int currentYear = java.time.LocalDate.now().getYear();
        String[] seasons = {"Spring", "Summer", "Fall"};
        for (int y = currentYear - 1; y <= currentYear + 1; y++) {
            for (String season : seasons) {
                pushSemesterComboBox.getItems().add(season + " " + y);
            }
        }
        int month = java.time.LocalDate.now().getMonthValue();
        String defaultSeason = month <= 5 ? "Spring" : (month <= 8 ? "Summer" : "Fall");
        pushSemesterComboBox.setValue(defaultSeason + " " + currentYear);
    }

    private void setupTab6() {
        fsColId.setCellValueFactory(new PropertyValueFactory<>("scheduleId"));
        fsColQnaire.setCellValueFactory(new PropertyValueFactory<>("questionnaireName"));
        fsColDept.setCellValueFactory(new PropertyValueFactory<>("department"));
        fsColCourse.setCellValueFactory(new PropertyValueFactory<>("courseCode"));
        fsColSemester.setCellValueFactory(new PropertyValueFactory<>("semester"));
        fsColStartDate.setCellValueFactory(new PropertyValueFactory<>("startDate"));
        fsColEndDate.setCellValueFactory(new PropertyValueFactory<>("endDate"));
        fsColStatus.setCellValueFactory(new PropertyValueFactory<>("status"));
        fsColCreated.setCellValueFactory(new PropertyValueFactory<>("createdAt"));
        refreshScheduledFormsTable();
    }

    private void refreshScheduledFormsTable() {
        ObservableList<FormSchedule> data =
                FXCollections.observableArrayList(FormScheduleDAO.getAllSchedules());
        scheduledFormsTableView.setItems(data);
    }

    @FXML
    private void handleTypeChange() {
        String selected = questionTypeBox.getValue();
        if (selected == null) return;
        switch (selected) {
            case "LIKERT" -> showLikertFields();
            case "SLIDER" -> showSliderFields();
            case "TEXT" -> showTextField();
            case "BINARY" -> showBinaryFields();
            default -> questionDynamicArea.getChildren().clear();
        }
    }

    private GridPane makeDynamicGrid() {
        GridPane grid = new GridPane();
        grid.setHgap(10);
        grid.setVgap(10);
        grid.setPadding(new Insets(5, 0, 5, 0));
        ColumnConstraints c1 = new ColumnConstraints();
        c1.setPercentWidth(25);
        ColumnConstraints c2 = new ColumnConstraints();
        c2.setPercentWidth(75);
        grid.getColumnConstraints().addAll(c1, c2);
        return grid;
    }

    private void showLikertFields() {
        questionDynamicArea.getChildren().clear();
        GridPane grid = makeDynamicGrid();

        Label maxLbl   = new Label("Total Options:");
        TextField maxTf = new TextField("5");
        maxTf.setId("likertMax");

        Label optLbl  = new Label("Add Option:");
        TextField optTf = new TextField();
        optTf.setPromptText("Type option then press Enter");
        optTf.setId("likertOptInput");

        ListView<String> optList = new ListView<>();
        optList.setId("likertOptList");
        optList.setPrefHeight(100);

        Button removeBtn = new Button("Remove Selected");
        removeBtn.setOnAction(ev -> {
            int idx = optList.getSelectionModel().getSelectedIndex();
            if (idx >= 0) optList.getItems().remove(idx);
        });

        VBox optBox = new VBox(5, optList, removeBtn);
        optBox.setId("likertOptBox");
        Label currentLbl = new Label("Selected Options:");

        optTf.setOnAction(e -> {
            String val = optTf.getText().trim();
            if (!val.isEmpty()) {
                if (optList.getItems().contains(val)) {
                    setStatus(addQuestionStatusLabel, "* This option already exists in the list.", true);
                    return;
                }
                if (!containsAlphanumeric(val)) {
                    setStatus(addQuestionStatusLabel, "* Option text must contain at least one letter or digit.", true);
                    return;
                }
                setStatus(addQuestionStatusLabel, "", false);
                optList.getItems().add(val);
                optTf.clear();
            }
        });

        grid.add(maxLbl, 0, 0); grid.add(maxTf, 1, 0);
        grid.add(optLbl, 0, 1); grid.add(optTf, 1, 1);
        grid.add(currentLbl, 0, 2); grid.add(optBox, 1, 2);
        questionDynamicArea.getChildren().add(grid);
    }

    private void showSliderFields() {
        questionDynamicArea.getChildren().clear();
        GridPane grid = makeDynamicGrid();

        Label lblL = new Label("Slider Label:"); TextField lblTf = new TextField("performance");
        Label minL = new Label("Min Value:"); TextField minTf = new TextField("0");
        Label maxL = new Label("Max Value:"); TextField maxTf = new TextField("100");
        lblTf.setId("sliderLabel"); minTf.setId("sliderMin"); maxTf.setId("sliderMax");

        grid.add(lblL, 0, 0); grid.add(lblTf, 1, 0);
        grid.add(minL, 0, 1); grid.add(minTf, 1, 1);
        grid.add(maxL, 0, 2); grid.add(maxTf, 1, 2);
        questionDynamicArea.getChildren().add(grid);
    }

    private void showTextField() {
        questionDynamicArea.getChildren().clear();
        GridPane grid = makeDynamicGrid();

        Label msgL  = new Label("Instructions:");
        TextField msgTf = new TextField();
        msgTf.setPromptText("Optional guidance for the student");
        msgTf.setId("textMessage");

        grid.add(msgL, 0, 0); grid.add(msgTf, 1, 0);
        questionDynamicArea.getChildren().add(grid);
    }

    private void showBinaryFields() {
        questionDynamicArea.getChildren().clear();
        GridPane grid = makeDynamicGrid();

        Label o1L = new Label("Option 1:"); TextField o1Tf = new TextField("Yes");
        Label o2L = new Label("Option 2:"); TextField o2Tf = new TextField("No");
        o1Tf.setId("binOpt1"); o2Tf.setId("binOpt2");
        // Bug 7 fix: options default to alphanumeric values — already done
        grid.add(o1L, 0, 0); grid.add(o1Tf, 1, 0);
        grid.add(o2L, 0, 1); grid.add(o2Tf, 1, 1);
        questionDynamicArea.getChildren().add(grid);
    }

    private static boolean containsAlphanumeric(String s) {
        if (s == null) return false;
        for (char c : s.toCharArray()) {
            if (Character.isLetterOrDigit(c)) return true;
        }
        return false;
    }

    private static int semesterYear(String semester) {
        if (semester == null) return -1;
        String[] parts = semester.split(" ", 2);
        if (parts.length < 2) return -1;
        try { return Integer.parseInt(parts[1].trim()); } catch (NumberFormatException e) { return -1; }
    }

    @FXML
    private void saveQuestion() {
        String text   = questionTextArea.getText();
        String type   = questionTypeBox.getValue();
        String factor = questionFactorBox.getValue();

        if (text == null || text.isBlank() || type == null || factor == null) {
            setStatus(addQuestionStatusLabel, "* Please fill in all required fields.", true);
            return;
        }
        if (!containsAlphanumeric(text)) {
            setStatus(addQuestionStatusLabel, "* Question text must contain at least one letter or digit.", true);
            return;
        }

        String metadata = buildMetadata(type);
        if (metadata == null) {
            setStatus(addQuestionStatusLabel, "* Please complete the type-specific fields.", true);
            return;
        }

        if (QuestionDAO.saveQuestion(text.trim(), type, factor, metadata)) {
            SceneTools.showAlert(Alert.AlertType.INFORMATION,
                    "Success",
                    "Question Saved",
                    text + " has been saved with ");
            clearQuestionForm();
            refreshQuestionsTable();
            refreshAvailableQuestionsTable();
        } else {
            SceneTools.showAlert(Alert.AlertType.ERROR,
                    "Error", "Can not save question.",
                    "Check question text, type, performance factor or other input fields.");
        }
    }

    @FXML
    private void clearQuestionForm() {
        questionTextArea.clear();
        questionTypeBox.getSelectionModel().clearSelection();
        questionFactorBox.getSelectionModel().clearSelection();
        questionDynamicArea.getChildren().clear();
        setStatus(addQuestionStatusLabel, "", false);
    }

    private String buildMetadata(String type) {
        if (questionDynamicArea.getChildren().isEmpty()) return null;
        GridPane grid = (GridPane) questionDynamicArea.getChildren().get(0);

        try {
            switch (type) {
                case "LIKERT" -> {
                    TextField maxTf = (TextField) grid.lookup("#likertMax");
                    ListView<String> optList = (ListView<String>) grid.lookup("#likertOptList");
                    int maxScale = Integer.parseInt(maxTf.getText().trim());
                    if (optList.getItems().isEmpty()) return null; // need at least one option
                    StringBuilder opts = new StringBuilder();
                    for (String val : optList.getItems()) {
                        if (!containsAlphanumeric(val)) return null;
                        if (opts.length() > 0) opts.append(",");
                        opts.append(val);
                    }
                    return QuestionDAO.buildLikertMetadata(maxScale, opts.toString());
                }
                case "SLIDER" -> {
                    TextField lblTf = (TextField) grid.lookup("#sliderLabel");
                    TextField minTf = (TextField) grid.lookup("#sliderMin");
                    TextField maxTf = (TextField) grid.lookup("#sliderMax");
                    String lbl = lblTf.getText().trim();
                    if (!containsAlphanumeric(lbl)) {
                        setStatus(addQuestionStatusLabel, "* Slider label must contain at least one letter or digit.", true);
                        return null;
                    }
                    int min = Integer.parseInt(minTf.getText().trim());
                    int max = Integer.parseInt(maxTf.getText().trim());
                    if (max <= min) {
                        setStatus(addQuestionStatusLabel, "* Slider max value must be greater than min value.", true);
                        return null;
                    }
                    return QuestionDAO.buildSliderMetadata(lbl, min, max);
                }
                case "TEXT" -> {
                    TextField msgTf = (TextField) grid.lookup("#textMessage");
                    String msg = msgTf.getText().trim();
                    if (!msg.isEmpty() && !containsAlphanumeric(msg)) {
                        setStatus(addQuestionStatusLabel, "* Instructions must contain at least one letter or digit.", true);
                        return null;
                    }
                    return QuestionDAO.buildTextMetadata(msg);
                }
                case "BINARY" -> {
                    TextField o1 = (TextField) grid.lookup("#binOpt1");
                    TextField o2 = (TextField) grid.lookup("#binOpt2");
                    String opt1 = o1.getText().trim();
                    String opt2 = o2.getText().trim();
                    if (!containsAlphanumeric(opt1) || !containsAlphanumeric(opt2)) {
                        setStatus(addQuestionStatusLabel, "* Binary options must each contain at least one letter or digit.", true);
                        return null;
                    }
                    return QuestionDAO.buildBinaryMetadata(opt1, opt2);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @FXML
    private void addQuestionToForm() {
        QuestionRecord selected = availableQuestionsTable.getSelectionModel().getSelectedItem();
        if (selected == null) {
            setStatus(addFormStatusLabel, "* Select a question from the table first.", true);
            return;
        }
        if (selectedQuestionIds.contains(selected.getQuestionId())) {
            setStatus(addFormStatusLabel, "* This question is already added.", true);
            return;
        }
        selectedQuestionIds.add(selected.getQuestionId());
        selectedQuestionsList.getItems().add(
                "[" + selected.getQuestionId() + "] " + selected.getPerfFactor()
                + " — " + selected.getQuestionText());
        setStatus(addFormStatusLabel, "", false);
    }

    @FXML
    private void removeQuestionFromForm() {
        int idx = selectedQuestionsList.getSelectionModel().getSelectedIndex();
        if (idx < 0) return;
        selectedQuestionsList.getItems().remove(idx);
        selectedQuestionIds.remove(idx);
    }

    @FXML
    private void saveForm() {
        String name = formNameField.getText();
        String desc = formDescArea.getText();

        if (name == null || name.isBlank()) {
            setStatus(addFormStatusLabel, "* Form name is required.", true);
            return;
        }
        if (!containsAlphanumeric(name)) {
            setStatus(addFormStatusLabel, "* Form name must contain at least one letter or digit.", true);
            return;
        }
        if (desc != null && !desc.isBlank() && !containsAlphanumeric(desc)) {
            setStatus(addFormStatusLabel, "* Description must contain at least one letter or digit.", true);
            return;
        }
        if (selectedQuestionIds.isEmpty()) {
            setStatus(addFormStatusLabel, "* Please add at least one question.", true);
            return;
        }

        if (QuestionnaireDAO.saveQuestionnaire(name.trim(), desc, new ArrayList<>(selectedQuestionIds))) {
            SceneTools.showAlert(Alert.AlertType.INFORMATION,
                    "Success",
                    "Questionnaire Saved",
                    name + " has been saved with " + selectedQuestionIds.size() + " questions.");
            clearFormDraft();
            refreshFormsTable();
            refreshPushFormComboBox();
        } else {
            SceneTools.showAlert(Alert.AlertType.ERROR,
                    "Error", "Can not save questionnaire.",
                    "Save failed. Check question name, description, or select at least one question.");
        }
    }

    @FXML
    private void clearFormDraft() {
        formNameField.clear();
        formDescArea.clear();
        selectedQuestionsList.getItems().clear();
        selectedQuestionIds.clear();
        setStatus(addFormStatusLabel, "", false);
    }

    @FXML
    private void onDeptSelected() {
        String dept = pushDeptComboBox.getValue();
        courseDispToCode.clear();
        pushCourseComboBox.getItems().clear();
        if (dept == null) return;
        for (String[] row : FormScheduleDAO.getCoursesByDepartment(dept)) {
            String display = row[0] + " — " + row[1];
            courseDispToCode.put(display, row[0]);
            pushCourseComboBox.getItems().add(display);
        }
    }

    @FXML
    private void pushForm() {
        String formDisp   = pushFormComboBox.getValue();
        String dept       = pushDeptComboBox.getValue();
        String courseDisp = pushCourseComboBox.getValue();
        String semester   = pushSemesterComboBox.getValue();

        if (formDisp == null || dept == null || courseDisp == null || semester == null
                || pushStartDate.getValue() == null || pushEndDate.getValue() == null) {
            setStatus(pushStatusLabel, "* Please fill in all required fields.", true);
            return;
        }
        if (pushEndDate.getValue().isBefore(pushStartDate.getValue())) {
            setStatus(pushStatusLabel, "* End date must be on or after start date.", true);
            return;
        }

        int semYear = semesterYear(semester);
        if (semYear > 0) {
            LocalDate startDate = pushStartDate.getValue();
            LocalDate endDate   = pushEndDate.getValue();
            if (startDate.getYear() != semYear || endDate.getYear() != semYear) {
                setStatus(pushStatusLabel,
                        "* The schedule dates must fall within the year " + semYear
                        + " matching the selected semester '" + semester + "'.",
                        true);
                return;
            }
        }

        Integer qnaireId   = formNameToId.get(formDisp);
        String  courseCode = courseDispToCode.get(courseDisp);
        String  adminUser  = Session.getLoggedInUser() != null
                             ? Session.getLoggedInUser().getUsername() : "admin";

        boolean ok = FormScheduleDAO.pushForm(
                qnaireId, dept, courseCode, semester,
                pushStartDate.getValue().toString(),
                pushEndDate.getValue().toString(),
                adminUser);

        if (ok) {
            SceneTools.showAlert(Alert.AlertType.INFORMATION,
                    "Success",
                    "Form Scheduled",
                    "Form No " + qnaireId + " is scheduled for " + courseCode + " and semester " + semester + ".");
            clearPushForm();
            refreshScheduledFormsTable();
        } else {
            SceneTools.showAlert(Alert.AlertType.ERROR,
                    "Failure",
                    "Form Scheduling Failed",
                    "Failed to schedule form, recheck your input values.");
        }
    }

    @FXML
    private void clearPushForm() {
        pushFormComboBox.getSelectionModel().clearSelection();
        pushDeptComboBox.getSelectionModel().clearSelection();
        pushCourseComboBox.getItems().clear();
        pushStartDate.setValue(null);
        pushEndDate.setValue(null);
        setStatus(pushStatusLabel, "", false);
    }

    private void setStatus(Label lbl, String msg, boolean isError) {
        lbl.setText(msg);
        lbl.setStyle(isError
                ? "-fx-text-fill: #c0392b; -fx-font-family: 'Cal Sans Regular';"
                : "-fx-text-fill: #27ae60; -fx-font-family: 'Cal Sans Regular';");
    }
}
