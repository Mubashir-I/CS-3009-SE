package com.nuyron.facultyevaluationsystem.controller;

import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.TextField;

import com.nuyron.facultyevaluationsystem.dao.StudentDAO;

public class StudentFormController {

    @FXML private TextField rollNoField;
    @FXML private TextField nameField;
    @FXML private TextField batchField;
    @FXML private TextField deptIdField;

    @FXML
    private void handleSubmission() {
        try {
            // 1. Get data from UI
            String rollNo = rollNoField.getText();
            String name = nameField.getText();
            String batch = batchField.getText();
            String deptIdRaw = deptIdField.getText();

            // 2. Validation
            if (rollNo.isEmpty() || name.isEmpty() || batch.isEmpty() || deptIdRaw.isEmpty()) {
                showAlert("Error", "All fields are required!");
                return;
            }

            int deptId = Integer.parseInt(deptIdRaw);

            // 3. Call DAO class
            boolean success = StudentDAO.saveStudent(rollNo, name, batch, deptId);

            if (success) {
                showAlert("Success", "Student record created!");
                clearFields();
            } else {
                showAlert("Database Error", "Check console for SQL errors.");
            }

        } catch (NumberFormatException e) {
            showAlert("Input Error", "Department ID must be a numeric value!");
        }
    }

    private void showAlert(String title, String content) {
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle(title);
        alert.setHeaderText(null);
        alert.setContentText(content);
        alert.showAndWait();
    }

    private void clearFields() {
        rollNoField.clear();
        nameField.clear();
        batchField.clear();
        deptIdField.clear();
    }
}
