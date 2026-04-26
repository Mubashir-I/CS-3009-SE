package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.DAO.CourseDAO;
import com.nuyron.facultyevaluationsystem.DAO.SessionLogDAO;
import com.nuyron.facultyevaluationsystem.models.CourseAssignment;
import javafx.fxml.FXML;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import java.io.IOException;

import com.nuyron.facultyevaluationsystem.models.SceneTools;
import com.nuyron.facultyevaluationsystem.models.Session;

public class StudentDashboardController {


    @FXML
    private Button logoutButton;

    @FXML
    private Button feedbackButton;

    @FXML
    private Label errorLabel;

    @FXML
    private TableView<CourseAssignment> teachersTableView;
    @FXML
    private TableColumn<CourseAssignment, String> courseCodeColumn;
    @FXML
    private TableColumn<CourseAssignment, String> courseNameColumn;
    @FXML
    private TableColumn<CourseAssignment, String> teacherIdColumn;
    @FXML
    private TableColumn<CourseAssignment, String> teacherNameColumn;

    public void initialize() {
        // Feedback should only be available once a teacher row is selected.
        feedbackButton.disableProperty().bind(
                teachersTableView.getSelectionModel().selectedItemProperty().isNull()
        );

        teachersTableView.getSelectionModel().selectedItemProperty().addListener((obs, oldValue, newValue) -> {
            if (newValue != null) {
                errorLabel.setText("");
                errorLabel.setVisible(false);
            }
        });

        setupTeachersTable();
    }

    private void setupTeachersTable() {
        courseCodeColumn.setCellValueFactory(new PropertyValueFactory<>("courseCode"));
        courseNameColumn.setCellValueFactory(new PropertyValueFactory<>("courseName"));
        teacherIdColumn.setCellValueFactory(new PropertyValueFactory<>("facultyId"));
        teacherNameColumn.setCellValueFactory(new PropertyValueFactory<>("facultyName"));

        if (Session.currentUser == null) {
            errorLabel.setText("Session expired. Please login again.");
            errorLabel.setVisible(true);
            return;
        }

        ObservableList<CourseAssignment> data = FXCollections.observableArrayList(
                CourseDAO.getAssignmentsForStudent(Session.currentUser.getUsername())
        );
        teachersTableView.setItems(data);

        if (data.isEmpty()) {
            errorLabel.setText("No teachers assigned to your enrolled courses yet.");
            errorLabel.setVisible(true);
        } else {
            errorLabel.setText("");
            errorLabel.setVisible(false);
        }
    }

    @FXML
    private void onFeedbackClick() throws IOException {
        CourseAssignment selected = teachersTableView.getSelectionModel().getSelectedItem();
        if (selected == null) {
            errorLabel.setText("Please select a teacher first.");
            errorLabel.setVisible(true);
            return;
        }

        Session.selectedEnrollmentId = selected.getAssignmentid();
        SceneTools.changeScene("StudentReview.fxml", errorLabel);
    }

    @FXML
    private void onFormsClick() throws IOException {
        SceneTools.changeScene("StudentForms.fxml", errorLabel);
    }

    @FXML
    private void onHistoryClick() throws IOException {
        SceneTools.changeScene("StudentReviewHistory.fxml", errorLabel);
    }

    @FXML
    private void onLogoutButtonClick() throws IOException {
        SessionLogDAO.logLogout(Session.sessionLogId != null ? Session.sessionLogId : -1);
        Session.clear();
        SceneTools.changeScene("LoginPage.fxml", errorLabel);
    }

    @FXML
    private void onPressedLogout() {
        logoutButton.setStyle("-fx-background-color: #0f3d4f;");
    }

    @FXML
    private void onReleaseLogout() {
        logoutButton.setStyle("-fx-background-color: #155870;");
    }
}