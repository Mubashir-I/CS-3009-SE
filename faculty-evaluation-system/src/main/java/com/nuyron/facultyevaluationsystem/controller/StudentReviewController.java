package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.DAO.FeedbackDAO;
import com.nuyron.facultyevaluationsystem.models.SceneTools;
import com.nuyron.facultyevaluationsystem.models.Session;
import javafx.fxml.FXML;
import javafx.scene.control.*;

import java.io.IOException;

public class FeedbackFormController {
    @FXML private Label enrollmentContextLabel;
    @FXML private ComboBox<Integer> clarityComboBox;
    @FXML private ComboBox<Integer> difficultyComboBox;
    @FXML private ComboBox<Integer> fairnessComboBox;
    @FXML private ComboBox<Integer> engagementComboBox;
    @FXML private ComboBox<Integer> workloadComboBox;
    @FXML private TextField tagsField;
    @FXML private TextArea commentsArea;
    @FXML private Label statusLabel;

    private static final int FEEDBACK_GAP_DAYS = 7;

    @FXML
    public void initialize() {
        clarityComboBox.getItems().addAll(1, 2, 3, 4, 5);
        difficultyComboBox.getItems().addAll(1, 2, 3, 4, 5);
        fairnessComboBox.getItems().addAll(1, 2, 3, 4, 5);
        engagementComboBox.getItems().addAll(1, 2, 3, 4, 5);
        workloadComboBox.getItems().addAll(1, 2, 3, 4, 5);

        if (Session.selectedEnrollmentId == null) {
            enrollmentContextLabel.setText("No enrollment selected. Go back and select a teacher.");
            statusLabel.setText("Cannot submit feedback without enrollment context.");
            statusLabel.setStyle("-fx-text-fill: red;");
        } else {
            enrollmentContextLabel.setText("Enrollment ID: " + Session.selectedEnrollmentId);
            statusLabel.setText("");
        }
    }

    @FXML
    private void handleSubmit() {
        Integer enrollmentId = Session.selectedEnrollmentId;
        if (enrollmentId == null) {
            setError("No enrollment selected. Please go back and choose a teacher first.");
            return;
        }

        if (Session.currentUser == null) {
            setError("Session expired. Please log in again.");
            return;
        }

        Integer clarity = clarityComboBox.getValue();
        Integer difficulty = difficultyComboBox.getValue();
        Integer fairness = fairnessComboBox.getValue();
        Integer engagement = engagementComboBox.getValue();
        Integer workload = workloadComboBox.getValue();

        if (clarity == null || difficulty == null || fairness == null || engagement == null || workload == null) {
            setError("Please select all five ratings (1-5).");
            return;
        }

        if (!FeedbackDAO.isEnrollmentOwnedByStudent(enrollmentId, Session.currentUser.getUsername())) {
            setError("Invalid enrollment selection for this student.");
            return;
        }

        if (FeedbackDAO.hasFeedbackForEnrollment(enrollmentId)) {
            setError("Feedback already exists for this enrollment.");
            return;
        }

        if (FeedbackDAO.hasRecentFeedbackForSameTeacher(Session.currentUser.getUsername(), enrollmentId, FEEDBACK_GAP_DAYS)) {
            setError("You can submit feedback for this teacher again after " + FEEDBACK_GAP_DAYS + " days.");
            return;
        }

        String tags = tagsField.getText();
        String comments = commentsArea.getText();

        boolean saved = FeedbackDAO.addFeedback(
                enrollmentId,
                clarity,
                difficulty,
                fairness,
                engagement,
                workload,
                tags,
                comments
        );

        if (!saved) {
            setError("Could not submit feedback. Please try again.");
            return;
        }

        statusLabel.setStyle("-fx-text-fill: green;");
        statusLabel.setText("Feedback submitted successfully.");

        clarityComboBox.setValue(null);
        difficultyComboBox.setValue(null);
        fairnessComboBox.setValue(null);
        engagementComboBox.setValue(null);
        workloadComboBox.setValue(null);
        tagsField.clear();
        commentsArea.clear();
    }

    @FXML
    private void onBackClick() throws IOException {
        SceneTools.changeScene("StudentDashboard.fxml", statusLabel);
    }

    private void setError(String message) {
        statusLabel.setStyle("-fx-text-fill: red;");
        statusLabel.setText(message);
    }
}