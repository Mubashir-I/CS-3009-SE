package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.DAO.FormScheduleDAO;
import com.nuyron.facultyevaluationsystem.models.FormSchedule;
import com.nuyron.facultyevaluationsystem.models.SceneTools;
import com.nuyron.facultyevaluationsystem.models.Session;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;

import java.io.IOException;

public class StudentFormsController {

    @FXML private TableView<FormSchedule> formsTableView;
    @FXML private TableColumn<FormSchedule, String> formNameCol;
    @FXML private TableColumn<FormSchedule, String> deptCol;
    @FXML private TableColumn<FormSchedule, String> courseCol;
    @FXML private TableColumn<FormSchedule, String> semesterCol;
    @FXML private TableColumn<FormSchedule, String> endDateCol;
    
    @FXML private Label statusLabel;

    public void initialize() {
        formNameCol.setCellValueFactory(new PropertyValueFactory<>("questionnaireName"));
        deptCol.setCellValueFactory(new PropertyValueFactory<>("department"));
        courseCol.setCellValueFactory(new PropertyValueFactory<>("courseCode"));
        semesterCol.setCellValueFactory(new PropertyValueFactory<>("semester"));
        endDateCol.setCellValueFactory(new PropertyValueFactory<>("endDate"));

        refreshFormsTable();
    }

    private void refreshFormsTable() {
        if (Session.currentUser == null) {
            statusLabel.setText("Session expired. Please log in again.");
            return;
        }
        ObservableList<FormSchedule> data = FXCollections.observableArrayList(
                FormScheduleDAO.getActiveSchedulesForStudent(Session.currentUser.getUsername())
        );
        formsTableView.setItems(data);
        if (data.isEmpty()) {
            statusLabel.setText("No active forms available at this time.");
        } else {
            statusLabel.setText("");
        }
    }

    @FXML
    private void onFillFormClick() throws IOException {
        FormSchedule selected = formsTableView.getSelectionModel().getSelectedItem();
        if (selected == null) {
            statusLabel.setText("Please select a form from the table to fill.");
            return;
        }

        Session.selectedFormSchedule = selected;
        SceneTools.changeScene("StudentFormFill.fxml", statusLabel);
    }

    @FXML
    private void onBackClick() throws IOException {
        SceneTools.changeScene("StudentDashboard.fxml", statusLabel);
    }
}
