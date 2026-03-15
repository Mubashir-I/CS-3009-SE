package com.nuyron.facultyevaluationsystem.controller;

import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.TextField;

import com.nuyron.facultyevaluationsystem.dao.TeacherDAO;

public class TeacherFormController {

    @FXML private TextField idField;
    @FXML private TextField nameField;
    @FXML private TextField deptIdField;
    @FXML private ChoiceBox<String> designation_choicebox;

    @FXML
    public void initialize() {
        // Initialize the choice box with your CHECK constraint values
        designation_choicebox.getItems().addAll(
                "Professor", "Lecturer", "Lab Instructor", "Assistant Professor"
        );
        designation_choicebox.setValue("Lecturer");
    }

    @FXML
    private void handleSubmission() {
        try {
            // 1. Get data from UI
            int id = Integer.parseInt(idField.getText());
            String name = nameField.getText();
            String designation = designation_choicebox.getValue();
            int deptId = Integer.parseInt(deptIdField.getText());

            // 2. Simple Validation
            if (designation == null || name.isEmpty()) {
                showAlert("Error", "Please fill all fields!");
                return;
            }

            // 3. Call DAO (DatabaseConnection)
            boolean success = TeacherDAO.saveTeacher(id, name, designation, deptId);

            if (success) {
                showAlert("Success", "Teacher added to database!");
                clearFields();
            } else {
                showAlert("Database Error", "Failed to save record.");
            }

        } catch (NumberFormatException e) {
            showAlert("Input Error", "ID and DeptID must be numbers!");
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
        idField.clear();
        nameField.clear();
        deptIdField.clear();
        designation_choicebox.getSelectionModel().clearSelection();
    }
}
