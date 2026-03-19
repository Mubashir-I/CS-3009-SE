package com.nuyron.facultyevaluationsystem.controller;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.control.Button;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;

import java.net.URL;
import java.util.ResourceBundle;

public class QuestionController implements Initializable {

    @FXML
    private ChoiceBox<String> typeBox;
    @FXML
    private VBox dynamicArea;
    @FXML
    private GridPane staticGrid;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        typeBox.getItems().addAll("Likert", "Slider", "Text", "Binary");
        typeBox.getSelectionModel().clearSelection();
    }

    @FXML
    private void handleTypeChange(ActionEvent event) {
        String selected = typeBox.getValue();
        switch (selected) {
            case "Likert":
                showLikertFields();
                break;
            case "Slider":
                showSliderFields();
                break;
            case "Text":
                showTextFields();
                break;
            case "Binary":
                showBinaryFields();
                break;
            default:
                dynamicArea.getChildren().clear();
        }
    }

    private GridPane getDynamicArea() {
        GridPane pane = new GridPane();
        pane.setHgap(staticGrid.getHgap());
        pane.setVgap(staticGrid.getVgap());
        pane.setPadding(staticGrid.getPadding());
        pane.getColumnConstraints().addAll(staticGrid.getColumnConstraints());
        return pane;
    }

    @FXML
    private void showSliderFields() {
        dynamicArea.getChildren().clear();

        GridPane pane = getDynamicArea();

        Label sliderLabel = new Label("Slider Label:");
        TextField labelInput = new TextField("progress");

        Label minLabel = new Label("Min Value:");
        TextField minInput = new TextField("poor");

        Label maxLabel = new Label("Max Value:");
        TextField maxInput = new TextField("excellent");

        pane.add(sliderLabel, 0, 0);
        pane.add(labelInput, 1, 0);
        pane.add(minLabel, 0, 1);
        pane.add(minInput, 1, 1);
        pane.add(maxLabel, 0, 2);
        pane.add(maxInput, 1, 2);

        dynamicArea.getChildren().add(pane);
    }

    private void showLikertFields() {
        dynamicArea.getChildren().clear();
        GridPane pane = getDynamicArea();

        Label maxScale = new Label("Total Options:");
        TextField maxScaleInput = new TextField("3");

        Label optionsLabel = new Label("Current Options:");
        VBox optionBox = new VBox(10);

        Label optionLabel = new Label("Add Option:");
        TextField optionInput = new TextField("");
        optionInput.setOnAction((event) -> {
            String option = optionInput.getText();
            if (!option.isEmpty()) {
                HBox row = new HBox(10);
                Label label = new Label(option);
                Button deleteBtn = new Button("X");
                row.setAlignment(Pos.CENTER_LEFT);
                row.setPadding(new Insets(5, 10, 5, 10));

                deleteBtn.setOnAction(e -> optionBox.getChildren().remove(row));

                row.getChildren().addAll(label, deleteBtn);
                optionBox.getChildren().add(row);
            }
            optionInput.clear();
            optionInput.requestFocus();
        });

        pane.add(maxScale, 0, 0);
        pane.add(maxScaleInput, 1, 0);
        pane.add(optionLabel, 0, 1);
        pane.add(optionInput, 1, 1);
        pane.add(optionsLabel, 0, 2);
        pane.add(optionBox, 1, 2);
        dynamicArea.getChildren().add(pane);
    }

    private void showTextFields() {
        dynamicArea.getChildren().clear();
        GridPane pane = getDynamicArea();

        Label message = new Label("Message:");
        TextField messageInput = new TextField("");
        messageInput.setPromptText("Enter any instructions or constraints for the answer");

        pane.add(message, 0, 0);
        pane.add(messageInput, 1, 0);
        dynamicArea.getChildren().add(pane);
    }

    private void showBinaryFields() {
        dynamicArea.getChildren().clear();
        GridPane pane = getDynamicArea();

        Label option1Label = new Label("Option 1:");
        TextField option1Input = new TextField("Yes");
        Label option2Label = new Label("Option 2:");
        TextField option2Input = new TextField("No");

        pane.add(option1Label, 0, 0);
        pane.add(option1Input, 1, 0);
        pane.add(option2Label, 0, 1);
        pane.add(option2Input, 1, 1);
        dynamicArea.getChildren().add(pane);
    }
}
