package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.DAO.TeacherDAO;
import com.nuyron.facultyevaluationsystem.models.SceneTools;
import com.nuyron.facultyevaluationsystem.models.Session;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextArea;

import java.io.IOException;

public class TeacherReviewDetailController {
    @FXML
    private Label courseLabel;
    @FXML
    private Label dateLabel;
    @FXML
    private Label overallLabel;
    @FXML
    private Label tagsLabel;
    @FXML
    private TextArea commentArea;
    @FXML
    private Label statusLabel;

    @FXML
    public void initialize() {
        if (Session.currentUser == null || Session.selectedFeedbackId == null) {
            statusLabel.setText("No review selected. Please go back and choose one.");
            return;
        }

        String[] detail = TeacherDAO.getReviewDetailForTeacher(
                Session.currentUser.getUsername(),
                Session.selectedFeedbackId
        );

        if (detail == null) {
            statusLabel.setText("Could not load review details.");
            return;
        }

        courseLabel.setText(detail[0]);
        dateLabel.setText(detail[1]);
        overallLabel.setText(detail[2]);
        tagsLabel.setText(detail[3] == null || detail[3].trim().isEmpty() ? "-" : detail[3]);
        commentArea.setText(detail[4] == null || detail[4].trim().isEmpty() ? "No comment provided." : detail[4]);
        statusLabel.setText("Anonymous student feedback");
    }

    @FXML
    private void onBackClick() throws IOException {
        SceneTools.changeScene("TeacherDashboard.fxml", statusLabel);
    }
}

