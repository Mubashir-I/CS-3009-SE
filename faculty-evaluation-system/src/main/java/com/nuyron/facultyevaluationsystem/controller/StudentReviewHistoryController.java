package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.DAO.FeedbackDAO;
import com.nuyron.facultyevaluationsystem.models.SceneTools;
import com.nuyron.facultyevaluationsystem.models.Session;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;

import java.io.IOException;

public class StudentReviewHistoryController {
    @FXML private TableView<String[]> historyTableView;
    @FXML private TableColumn<String[], String> teacherColumn;
    @FXML private TableColumn<String[], String> courseColumn;
    @FXML private TableColumn<String[], String> dateColumn;
    @FXML private Label statusLabel;

    @FXML
    public void initialize() {
        teacherColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[0]));
        courseColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[1]));
        dateColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[2]));

        if (Session.currentUser == null) {
            statusLabel.setText("Session expired. Please login again.");
            return;
        }

        historyTableView.setItems(FXCollections.observableArrayList(
                FeedbackDAO.getFeedbackHistoryForStudent(Session.currentUser.getUsername())
        ));

        if (historyTableView.getItems().isEmpty()) {
            statusLabel.setText("No feedback history found.");
        } else {
            statusLabel.setText("");
        }
    }

    @FXML
    private void onBackClick() throws IOException {
        SceneTools.changeScene("StudentDashboard.fxml", historyTableView);
    }
}

