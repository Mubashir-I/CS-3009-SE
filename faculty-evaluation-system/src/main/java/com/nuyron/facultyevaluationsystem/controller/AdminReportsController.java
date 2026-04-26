package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.DAO.AdminReportsDAO;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.fxml.FXML;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AdminReportsController {
    @FXML
    private ComboBox<String> teacherComboBox;

    @FXML
    private Label teacherNameValueLabel;
    @FXML
    private Label feedbackCountValueLabel;
    @FXML
    private Label clarityAvgValueLabel;
    @FXML
    private Label difficultyAvgValueLabel;
    @FXML
    private Label fairnessAvgValueLabel;
    @FXML
    private Label engagementAvgValueLabel;
    @FXML
    private Label workloadAvgValueLabel;
    @FXML
    private Label overallAvgValueLabel;

    @FXML
    private TableView<String[]> ratingsTable;
    @FXML
    private TableColumn<String[], String> ratingCourseColumn;
    @FXML
    private TableColumn<String[], String> ratingDateColumn;
    @FXML
    private TableColumn<String[], String> ratingClarityColumn;
    @FXML
    private TableColumn<String[], String> ratingDifficultyColumn;
    @FXML
    private TableColumn<String[], String> ratingFairnessColumn;
    @FXML
    private TableColumn<String[], String> ratingEngagementColumn;
    @FXML
    private TableColumn<String[], String> ratingWorkloadColumn;
    @FXML
    private TableColumn<String[], String> ratingOverallColumn;

    @FXML
    private Label statusLabel;

    private final Map<String, String> displayToUsername = new HashMap<>();

    @FXML
    public void initialize() {
        setupRatingsTable();
        loadTeachers();
    }

    @FXML
    private void onTeacherSelected() {
        loadSelectedTeacherReport();
    }

    private void loadTeachers() {
        teacherComboBox.getItems().clear();
        displayToUsername.clear();

        List<String[]> teachers = AdminReportsDAO.getTeacherOptions();
        for (String[] teacher : teachers) {
            String display = teacher[0] + " (" + teacher[1] + ")";
            displayToUsername.put(display, teacher[1]);
            teacherComboBox.getItems().add(display);
        }

        if (teacherComboBox.getItems().isEmpty()) {
            statusLabel.setText("No teachers found for reports.");
            clearSummary();
            ratingsTable.getItems().clear();
            teacherComboBox.setDisable(true);
            return;
        }

        teacherComboBox.getSelectionModel().selectFirst();
        loadSelectedTeacherReport();
    }

    private void loadSelectedTeacherReport() {
        String selectedDisplay = teacherComboBox.getValue();
        if (selectedDisplay == null || selectedDisplay.trim().isEmpty()) {
            clearSummary();
            ratingsTable.getItems().clear();
            statusLabel.setText("Please select a teacher.");
            return;
        }

        String username = displayToUsername.get(selectedDisplay);
        if (username == null) {
            statusLabel.setText("Unable to resolve the selected teacher.");
            return;
        }

        String[] summary = AdminReportsDAO.getTeacherSummary(username);
        if (summary == null) {
            clearSummary();
            ratingsTable.getItems().clear();
            statusLabel.setText("No report data available for the selected teacher.");
            return;
        }

        teacherNameValueLabel.setText(summary[0]);
        feedbackCountValueLabel.setText(summary[1]);
        clarityAvgValueLabel.setText(summary[2]);
        difficultyAvgValueLabel.setText(summary[3]);
        fairnessAvgValueLabel.setText(summary[4]);
        engagementAvgValueLabel.setText(summary[5]);
        workloadAvgValueLabel.setText(summary[6]);
        overallAvgValueLabel.setText(summary[7]);

        ratingsTable.setItems(FXCollections.observableArrayList(
                AdminReportsDAO.getTeacherRatings(username)
        ));

        if (ratingsTable.getItems().isEmpty()) {
            statusLabel.setText("No individual feedback entries found for this teacher.");
        } else {
            statusLabel.setText("");
        }
    }

    private void setupRatingsTable() {
        ratingCourseColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[0]));
        ratingDateColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[1]));
        ratingClarityColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[2]));
        ratingDifficultyColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[3]));
        ratingFairnessColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[4]));
        ratingEngagementColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[5]));
        ratingWorkloadColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[6]));
        ratingOverallColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[7]));
    }

    private void clearSummary() {
        teacherNameValueLabel.setText("-");
        feedbackCountValueLabel.setText("0");
        clarityAvgValueLabel.setText("0");
        difficultyAvgValueLabel.setText("0");
        fairnessAvgValueLabel.setText("0");
        engagementAvgValueLabel.setText("0");
        workloadAvgValueLabel.setText("0");
        overallAvgValueLabel.setText("0");
    }

}


