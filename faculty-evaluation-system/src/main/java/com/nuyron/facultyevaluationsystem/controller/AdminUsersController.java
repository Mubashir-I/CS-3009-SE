package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.models.SceneTools;
import com.nuyron.facultyevaluationsystem.DAO.UserDAO;
import com.nuyron.facultyevaluationsystem.models.Student;
import com.nuyron.facultyevaluationsystem.models.Faculty;
import com.nuyron.facultyevaluationsystem.models.Hod;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.AnchorPane;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.ButtonType;
import java.util.List;
import java.util.Optional;

public class AdminUsersController {
    @FXML
    private ComboBox<String> userTypeComboBox;
    @FXML
    private ComboBox<String> departmentComboBox;
    @FXML
    private TextField userAccountNameTextField;
    @FXML
    private TextField loginIDTextField;
    @FXML
    private PasswordField passwordPasswordField;

    @FXML
    private AnchorPane studentsAnchorPane;
    @FXML
    private TableView<Student> studentsTableView;
    @FXML
    private TableColumn<Student, String> nameColumn;
    @FXML
    private TableColumn<Student, String> loginIdColumn;
    @FXML
    private TableColumn<Student, String> dateCreatedColumn;

    @FXML
    private AnchorPane facultyAnchorPane;
    @FXML
    private TableView<Faculty> facultyTableView;
    @FXML
    private TableColumn<Faculty, String> facultyNameColumn;
    @FXML
    private TableColumn<Faculty, String> facultyLoginIdColumn;
    @FXML
    private TableColumn<Faculty, String> facultyDateCreatedColumn;

    @FXML
    private AnchorPane hodAnchorPane;
    @FXML
    private TableView<Hod> hodTableView;
    @FXML
    private TableColumn<Hod, String> hodNameColumn;
    @FXML
    private TableColumn<Hod, String> hodLoginIdColumn;
    @FXML
    private TableColumn<Hod, String> hodDateCreatedColumn;

    @FXML
    private TextField manageCurrentLoginIdField;
    @FXML
    private TextField manageNewNameField;
    @FXML
    private TextField manageNewLoginIdField;

    public void initialize(){
        initUserTypeComboBox();
        setupStudentsTable();
        setupFacultyTable();
        setupHodTable();
    }

    @FXML
    private void initUserTypeComboBox(){
        userTypeComboBox.setItems(FXCollections.observableArrayList("STUDENT", "TEACHER", "HOD", "ADMIN"));
        // Pre-populate departments from the distinct departments in courses table
        List<String> depts = com.nuyron.facultyevaluationsystem.DAO.FormScheduleDAO.getDepartments();
        departmentComboBox.setItems(FXCollections.observableArrayList(depts));
    }

    @FXML
    private void onRoleSelected() {
        String role = userTypeComboBox.getValue();
        // Department required for STUDENT, TEACHER, HOD — not for ADMIN
        boolean needsDept = "STUDENT".equals(role) || "HOD".equals(role) || "TEACHER".equals(role);
        departmentComboBox.setVisible(needsDept);
        departmentComboBox.setManaged(needsDept);
        // find the label above departmentComboBox
        javafx.scene.Node lbl = departmentComboBox.getParent()
                .getChildrenUnmodifiable().stream()
                .filter(n -> n instanceof javafx.scene.control.Label &&
                        "Department".equals(((javafx.scene.control.Label)n).getText()))
                .findFirst().orElse(null);
        if (lbl != null) {
            lbl.setVisible(needsDept);
            lbl.setManaged(needsDept);
        }
    }

    @FXML
    private void resizeTableView(){
        if(studentsTableView != null && studentsAnchorPane != null) {
            studentsTableView.prefHeightProperty().bind(studentsAnchorPane.heightProperty());
            studentsTableView.prefWidthProperty().bind(studentsAnchorPane.widthProperty());
        }
        if(facultyTableView != null && facultyAnchorPane != null) {
            facultyTableView.prefHeightProperty().bind(facultyAnchorPane.heightProperty());
            facultyTableView.prefWidthProperty().bind(facultyAnchorPane.widthProperty());
        }
        if(hodTableView != null && hodAnchorPane != null) {
            hodTableView.prefHeightProperty().bind(hodAnchorPane.heightProperty());
            hodTableView.prefWidthProperty().bind(hodAnchorPane.widthProperty());
        }
    }

    @FXML
    private void onClickAddUser(){
        String accountName = userAccountNameTextField.getText();
        String loginID = loginIDTextField.getText();
        String password = passwordPasswordField.getText();
        String comboChoice = userTypeComboBox.getSelectionModel().getSelectedItem();
        String department  = departmentComboBox.getValue();

        String errorMessage = validateUser(accountName, loginID, password, comboChoice, department);
        if(errorMessage != null){
            SceneTools.showAlert(AlertType.ERROR, "Error", "There was an error in the input format.", errorMessage);
            return;
        }

        if(UserDAO.addUserDB(accountName, loginID, password, comboChoice, department)){
            SceneTools.showAlert(AlertType.INFORMATION,
                    "Success", "Name:  " + accountName + "\nLogin-ID:  "+ loginID,
                    "This user was added to the system.");
            setupStudentsTable();
            setupFacultyTable();
            setupHodTable();
        }
        else{
            SceneTools.showAlert(Alert.AlertType.ERROR,
                    "Error", "Can't add this user.",
                    "There was an error adding this user to the system.");
        }
    }

    private static boolean containsAlphanumeric(String s) {
        if (s == null) return false;
        for (char c : s.toCharArray()) {
            if (Character.isLetterOrDigit(c)) return true;
        }
        return false;
    }

    private String validateUser(String accountName, String username, String loginID,
                                String role, String department){
        if(accountName.isEmpty() || username.isEmpty() || loginID.isEmpty() || role == null || role.isEmpty()){
            return "All fields must be filled.";
        }
        if (!containsAlphanumeric(accountName)) {
            return "Account name must contain at least one letter or digit.";
        }
        if (("HOD".equals(role) || "TEACHER".equals(role) || "STUDENT".equals(role)) &&
                (department == null || department.isBlank())) {
            return "Department is required for Student, HOD, and Teacher accounts.";
        }
        if(role.equalsIgnoreCase("Student")){
            if(!username.matches("^[a-zA-Z]\\d{6}$")){
                return "Student ID must start with the campus initials, followed by batch-no, and roll-no (i.e. 23I-0606)";
            }
        }
        else if(role.equalsIgnoreCase("Teacher") || role.equalsIgnoreCase("HOD")){
            if(!username.matches("^[a-zA-Z]+\\.[a-zA-Z]+$")){
                return "User ID must be in the format: [FirstName] . [LastName]";
            }
        }
        return null;
    }

    private void setupStudentsTable(){
        nameColumn.setCellValueFactory(new PropertyValueFactory<>("name"));
        loginIdColumn.setCellValueFactory(new PropertyValueFactory<>("loginID"));
        dateCreatedColumn.setCellValueFactory(new PropertyValueFactory<>("dateCreated"));

        ObservableList<Student> data = FXCollections.observableArrayList(UserDAO.getAllStudents());
        studentsTableView.setItems(data);
    }

    private void setupFacultyTable(){
        if(facultyTableView == null) return;
        facultyNameColumn.setCellValueFactory(new PropertyValueFactory<>("name"));
        facultyLoginIdColumn.setCellValueFactory(new PropertyValueFactory<>("loginID"));
        facultyDateCreatedColumn.setCellValueFactory(new PropertyValueFactory<>("dateCreated"));

        ObservableList<Faculty> data = FXCollections.observableArrayList(UserDAO.getAllFaculty());
        facultyTableView.setItems(data);
    }

    private void setupHodTable(){
        if(hodTableView == null) return;
        hodNameColumn.setCellValueFactory(new PropertyValueFactory<>("name"));
        hodLoginIdColumn.setCellValueFactory(new PropertyValueFactory<>("loginID"));
        hodDateCreatedColumn.setCellValueFactory(new PropertyValueFactory<>("dateCreated"));

        ObservableList<Hod> data = FXCollections.observableArrayList(UserDAO.getAllHod());
        hodTableView.setItems(data);
    }

    @FXML
    private void onClickUpdateUser() {
        String currentId = manageCurrentLoginIdField.getText();
        String newName = manageNewNameField.getText();
        String newId = manageNewLoginIdField.getText();

        if (currentId == null || currentId.trim().isEmpty()) {
            SceneTools.showAlert(AlertType.ERROR, "Error", "Missing Information", "Please enter the Current Login ID of the user you want to update.");
            return;
        }
        if (!containsAlphanumeric(currentId)) {
            SceneTools.showAlert(AlertType.ERROR, "Error", "Invalid Input", "Current Login ID must contain at least one letter or digit.");
            return;
        }

        if ((newName == null || newName.trim().isEmpty()) && (newId == null || newId.trim().isEmpty())) {
            SceneTools.showAlert(AlertType.WARNING, "Warning", "No changes provided", "Please enter a new name or a new login ID to update.");
            return;
        }
        if (newName != null && !newName.trim().isEmpty() && !containsAlphanumeric(newName)) {
            SceneTools.showAlert(AlertType.ERROR, "Error", "Invalid Input", "New Account Name must contain at least one letter or digit.");
            return;
        }
        if (newId != null && !newId.trim().isEmpty() && !containsAlphanumeric(newId)) {
            SceneTools.showAlert(AlertType.ERROR, "Error", "Invalid Input", "New Login ID must contain at least one letter or digit.");
            return;
        }

        // Build Confirmation Text
        StringBuilder confirmationText = new StringBuilder("Are you sure you want to update the user '" + currentId + "'?\n\nNew Details:\n");
        if (newName != null && !newName.trim().isEmpty()) {
            confirmationText.append("- Name: ").append(newName).append("\n");
        }
        if (newId != null && !newId.trim().isEmpty()) {
            confirmationText.append("- Login ID: ").append(newId).append("\n");
        }

        Alert alert = new Alert(AlertType.CONFIRMATION);
        alert.setTitle("Confirm Update");
        alert.setHeaderText("Confirm User Details Change");
        alert.setContentText(confirmationText.toString());

        Optional<ButtonType> result = alert.showAndWait();
        if (result.isPresent() && result.get() == ButtonType.OK) {
            boolean success = UserDAO.updateUser(currentId, newName, newId);
            if (success) {
                SceneTools.showAlert(AlertType.INFORMATION, "Success", "Update Successful", "The user details have been updated.");

                // Clear the fields (refresh effect)
                manageCurrentLoginIdField.clear();
                manageNewNameField.clear();
                manageNewLoginIdField.clear();

                // Refresh tables
                setupStudentsTable();
                setupFacultyTable();
                setupHodTable();
            } else {
                SceneTools.showAlert(AlertType.ERROR, "Error", "Update Failed", "Could not update the user. Please ensure the Current Login ID is correct or the new Login ID is not already taken.");
            }
        }
    }
}
