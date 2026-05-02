package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.DAO.CourseDAO;
import com.nuyron.facultyevaluationsystem.models.Course;
import com.nuyron.facultyevaluationsystem.models.CourseAssignment;
import com.nuyron.facultyevaluationsystem.models.StudentEnrollment;
import com.nuyron.facultyevaluationsystem.models.SceneTools;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;

import java.util.HashMap;
import java.util.Map;
import javafx.collections.ObservableList;

public class AdminCoursesController {

    @FXML
    private TextField courseCodeTextField;
    @FXML
    private TextField courseNameTextField;
    @FXML
    private Label coursePreviewLabel;
    @FXML
    private TextField departmentTextField;
    @FXML
    private Label fillFieldErrorLabel;

    @FXML
    private TableView<Course> coursesTableView;
    @FXML
    private TableColumn<Course, Integer> courseIdColumn;
    @FXML
    private TableColumn<Course, String> courseCodeColumn;
    @FXML
    private TableColumn<Course, String> courseTitleColumn;

    @FXML
    private TableView<CourseAssignment> facultyaAssignmentsTableView;
    @FXML
    private TableColumn<CourseAssignment, Integer> assignmentsIdColumn;
    @FXML
    private TableColumn<CourseAssignment, String> assignmentsCourseCodeColumn;
    @FXML
    private TableColumn<CourseAssignment, String> assignmentsCourseNameColumn;
    @FXML
    private TableColumn<CourseAssignment, String> assignmentsFacultyIdColumn;
    @FXML
    private TableColumn<CourseAssignment, String> assignmentsFacultyNameColumn;

    @FXML
    private TextField enrollStudentIdTextField;
    @FXML
    private ComboBox<String> enrollCourseComboBox;
    @FXML
    private ComboBox<String> enrollTeacherComboBox;
    @FXML
    private Button enrollStudentButton;
    @FXML
    private Label enrollStudentFillFieldLabel;

    private final Map<String, String> enrollCourseDisplayToCode = new HashMap<>();
    private final Map<String, Integer> enrollTeacherDisplayToAssignmentId = new HashMap<>();

    @FXML
    private TableView<StudentEnrollment> enrollmentsTableView;
    @FXML
    private TableColumn<StudentEnrollment, Integer> enrollmentsIdColumn;
    @FXML
    private TableColumn<StudentEnrollment, String> enrollmentsCourseCodeColumn;
    @FXML
    private TableColumn<StudentEnrollment, String> enrollmentsStudentIdColumn;
    @FXML
    private TableColumn<StudentEnrollment, String> enrollmentsStudentNameColumn;

    @FXML
    private ComboBox<String> assignCourseComboBox;
    @FXML
    private ComboBox<String> assignFacultyComboBox;
    @FXML
    private Button assignTeacherButton;
    @FXML
    private Label assignFacultyFillFieldLabel;

    // Maps for Assign Faculty dropdowns
    private final Map<String, String>  assignCourseDispToCode = new HashMap<>();   // "CODE — Name" -> "CODE"
    private final Map<String, String>  assignFacultyDispToId  = new HashMap<>();   // "Name (id)"   -> "id"
    private final Map<String, String>  assignCourseToDept     = new HashMap<>();   // "CODE"        -> dept
    // Full item lists for filtering
    private ObservableList<String> allCourseItems;
    private ObservableList<String> allFacultyItems;

    @FXML
    private void assignTeacherToCourse(){
        String courseDisplay  = assignCourseComboBox.getValue();
        String facultyDisplay = assignFacultyComboBox.getValue();

        if (courseDisplay == null || courseDisplay.trim().isEmpty() ||
            facultyDisplay == null || facultyDisplay.trim().isEmpty()) {
            assignFacultyFillFieldLabel.setText("*Please select a course and teacher");
            return;
        }

        String courseCode = assignCourseDispToCode.get(courseDisplay);
        String facultyID  = assignFacultyDispToId.get(facultyDisplay);

        if (courseCode == null || facultyID == null) {
            assignFacultyFillFieldLabel.setText("*Please select a valid course and teacher from the list");
            return;
        }

        assignFacultyFillFieldLabel.setText("");
        if (CourseDAO.assignTeacher(courseCode, facultyID)) {
            SceneTools.showAlert(Alert.AlertType.INFORMATION,
                    "Success", "Teacher assigned!",
                    facultyID + " has been assigned to " + courseCode);
            setupAssignmentsTable();
            initEnrollSelectors();
            assignCourseComboBox.setValue(null);
            assignFacultyComboBox.getItems().clear();
            assignFacultyComboBox.setDisable(true);
            assignFacultyDispToId.clear();
            allFacultyItems = null;
        } else {
            SceneTools.showAlert(Alert.AlertType.ERROR,
                    "Error", "Can not assign faculty to this course.",
                    "This teacher may already be assigned, or the IDs are invalid.");
        }
    }

    /**
     * Initialises the assignCourseComboBox with all courses and attaches a live-filter listener.
     * Teachers are loaded when a course is selected (via onAssignCourseSelected).
     */
    private void initAssignSelectors() {
        assignCourseDispToCode.clear();
        assignCourseToDept.clear();
        assignCourseComboBox.getItems().clear();

        for (String[] row : CourseDAO.getAllCoursesForAssignment()) {
            String code    = row[0];
            String name    = row[1];
            String dept    = row[2];
            String display = code + " \u2014 " + name;
            assignCourseDispToCode.put(display, code);
            assignCourseToDept.put(code, dept);
            assignCourseComboBox.getItems().add(display);
        }
        allCourseItems = javafx.collections.FXCollections.observableArrayList(
                assignCourseComboBox.getItems());

        // Live-filter: typing in the editor filters the dropdown items
        assignCourseComboBox.getEditor().textProperty().addListener((obs, oldVal, newVal) -> {
            if (newVal != null && assignCourseDispToCode.containsKey(newVal)) return; // exact match
            String typed = newVal == null ? "" : newVal.toLowerCase();
            ObservableList<String> filtered = allCourseItems.filtered(
                    item -> item.toLowerCase().contains(typed));
            assignCourseComboBox.setItems(filtered);
            if (!typed.isEmpty()) assignCourseComboBox.show();
        });

        assignFacultyComboBox.setDisable(true);
    }

    /** Called when user selects a course in the assign-faculty ComboBox. */
    @FXML
    private void onAssignCourseSelected() {
        String selected = assignCourseComboBox.getValue();
        assignFacultyDispToId.clear();
        assignFacultyComboBox.getItems().clear();
        assignFacultyComboBox.setDisable(true);
        allFacultyItems = null;

        if (selected == null) return;
        String courseCode = assignCourseDispToCode.get(selected);
        if (courseCode == null) return;

        String dept = assignCourseToDept.get(courseCode);
        if (dept == null || dept.isBlank()) return;

        for (String[] row : CourseDAO.getFacultyByDepartment(dept)) {
            String username = row[0];
            String name     = row[1];
            String display  = name + " (" + username + ")";
            assignFacultyDispToId.put(display, username);
            assignFacultyComboBox.getItems().add(display);
        }

        allFacultyItems = javafx.collections.FXCollections.observableArrayList(
                assignFacultyComboBox.getItems());

        // Live-filter for faculty ComboBox
        assignFacultyComboBox.getEditor().textProperty().addListener((obs, oldVal, newVal) -> {
            if (newVal != null && assignFacultyDispToId.containsKey(newVal)) return;
            if (allFacultyItems == null) return;
            String typed = newVal == null ? "" : newVal.toLowerCase();
            ObservableList<String> filtered = allFacultyItems.filtered(
                    item -> item.toLowerCase().contains(typed));
            assignFacultyComboBox.setItems(filtered);
            if (!typed.isEmpty()) assignFacultyComboBox.show();
        });

        assignFacultyComboBox.setDisable(assignFacultyComboBox.getItems().isEmpty());
    }

    private static boolean containsAlphanumeric(String s) {
        if (s == null) return false;
        for (char c : s.toCharArray()) {
            if (Character.isLetterOrDigit(c)) return true;
        }
        return false;
    }


    public void initialize(){
        setupCoursesTable();
        setupAssignmentsTable();
        setupEnrollmentsTable();
        initEnrollSelectors();
        initAssignSelectors();
    }


    @FXML
    private void updateCourseLabelPreview(){
        String courseCode = courseCodeTextField.getText();
        String courseName = courseNameTextField.getText();

        String labelText = courseCode + " - " + courseName;
        coursePreviewLabel.setText(labelText);
    }

    @FXML
    private void onAddCourseButtonClick(){
        String courseCode = courseCodeTextField.getText();
        String courseName = courseNameTextField.getText();
        String dept = departmentTextField.getText();

        if (
                courseCode == null || courseCode.trim().isEmpty() ||
                courseName == null || courseName.trim().isEmpty() ||
                dept == null || dept.trim().isEmpty()
        ){
            fillFieldErrorLabel.setText("*Please fill in the required fields.");
            return;
        }
        if (!containsAlphanumeric(courseCode)) {
            fillFieldErrorLabel.setText("*Course code must contain at least one letter or digit.");
            return;
        }
        if (!containsAlphanumeric(courseName)) {
            fillFieldErrorLabel.setText("*Course name must contain at least one letter or digit.");
            return;
        }
        if (!containsAlphanumeric(dept)) {
            fillFieldErrorLabel.setText("*Department must contain at least one letter or digit.");
            return;
        }
        else{
            fillFieldErrorLabel.setText("");
            // Add to DB logic.
            if(CourseDAO.addCourse(courseCode, courseName, dept)){
                SceneTools.showAlert(Alert.AlertType.INFORMATION,
                        "Success",
                        "New course added!",
                        courseCode + " - " + courseName + " has been added to the list of registered courses.");
                setupCoursesTable();
                courseCodeTextField.setText("");
                courseNameTextField.setText("");
                departmentTextField.setText("");
                coursePreviewLabel.setText("-");
            }
            else{
                SceneTools.showAlert(Alert.AlertType.ERROR,
                        "Error",
                        "Can not add this course.",
                        "This course can not be added because either the course code is taken or the system is unavailable.");
            }
        }
    }

    private void setupCoursesTable() {
        courseIdColumn.setCellValueFactory(new PropertyValueFactory<>("courseId"));
        courseCodeColumn.setCellValueFactory(new PropertyValueFactory<>("courseCode"));
        courseTitleColumn.setCellValueFactory(new PropertyValueFactory<>("courseName"));

        ObservableList<Course> data = FXCollections.observableArrayList(CourseDAO.getAllCourses());
        coursesTableView.setItems(data);
    }

    private void setupAssignmentsTable() {
        assignmentsIdColumn.setCellValueFactory(new PropertyValueFactory<>("assignmentId"));
        assignmentsCourseCodeColumn.setCellValueFactory(new PropertyValueFactory<>("courseCode"));
        assignmentsCourseNameColumn.setCellValueFactory(new PropertyValueFactory<>("courseName"));
        assignmentsFacultyIdColumn.setCellValueFactory(new PropertyValueFactory<>("facultyId"));
        assignmentsFacultyNameColumn.setCellValueFactory(new PropertyValueFactory<>("facultyName"));

        ObservableList<CourseAssignment> data = FXCollections.observableArrayList(CourseDAO.getAllAssignments());
        facultyaAssignmentsTableView.setItems(data);
    }

    private void setupEnrollmentsTable() {
        enrollmentsIdColumn.setCellValueFactory(new PropertyValueFactory<>("enrollmentid"));
        enrollmentsCourseCodeColumn.setCellValueFactory(new PropertyValueFactory<>("courseCode"));
        enrollmentsStudentIdColumn.setCellValueFactory(new PropertyValueFactory<>("studentId"));
        enrollmentsStudentNameColumn.setCellValueFactory(new PropertyValueFactory<>("studentName"));

        ObservableList<StudentEnrollment> data = FXCollections.observableArrayList(CourseDAO.getAllEnrollments());
        enrollmentsTableView.setItems(data);
    }

    @FXML
    private void enrollStudentInCourse(){
        String studentID = enrollStudentIdTextField.getText();
        String selectedCourseDisplay = enrollCourseComboBox.getSelectionModel().getSelectedItem();
        String selectedTeacherDisplay = enrollTeacherComboBox.getSelectionModel().getSelectedItem();

        if(studentID == null || studentID.trim().isEmpty() ||
            selectedCourseDisplay == null || selectedCourseDisplay.trim().isEmpty() ||
            selectedTeacherDisplay == null || selectedTeacherDisplay.trim().isEmpty()){
            enrollStudentFillFieldLabel.setText("*Please fill all fields");
            return;
        }
        if (!containsAlphanumeric(studentID)) {
            enrollStudentFillFieldLabel.setText("*Student ID must contain at least one letter or digit");
            return;
        }

        String courseCode = enrollCourseDisplayToCode.get(selectedCourseDisplay);
        Integer assignmentId = enrollTeacherDisplayToAssignmentId.get(selectedTeacherDisplay);
        if (courseCode == null || assignmentId == null) {
            enrollStudentFillFieldLabel.setText("*Please choose a valid course and teacher");
            return;
        }

        else{
            enrollStudentFillFieldLabel.setText("");
            if(CourseDAO.enrollStudentByAssignment(assignmentId, courseCode, studentID.trim())){
                SceneTools.showAlert(Alert.AlertType.INFORMATION,
                        "Success",
                        "Student enrolled!",
                        studentID + " has been enrolled in " + courseCode + " under " + selectedTeacherDisplay);
                setupEnrollmentsTable();
                enrollStudentIdTextField.setText("");
                enrollCourseComboBox.getSelectionModel().clearSelection();
                enrollTeacherComboBox.getItems().clear();
                enrollTeacherComboBox.setDisable(true);
                enrollTeacherDisplayToAssignmentId.clear();
            }
            else{
                SceneTools.showAlert(Alert.AlertType.ERROR,
                        "Error", "Can not enroll student in this course.",
                        "Enrollment failed. Check student ID, assignment selection, or duplicate enrollment for the same course.");
            }
        }
    }

    private void initEnrollSelectors() {
        enrollCourseDisplayToCode.clear();
        enrollTeacherDisplayToAssignmentId.clear();
        enrollCourseComboBox.getItems().clear();
        enrollTeacherComboBox.getItems().clear();
        enrollTeacherComboBox.setDisable(true);

        for (String[] row : CourseDAO.getEnrollableCourses()) {
            String courseCode = row[0];
            String courseName = row[1];
            String display = courseCode + " - " + courseName;
            enrollCourseDisplayToCode.put(display, courseCode);
            enrollCourseComboBox.getItems().add(display);
        }
    }

    @FXML
    private void onEnrollCourseSelected() {
        String selectedCourseDisplay = enrollCourseComboBox.getSelectionModel().getSelectedItem();
        enrollTeacherDisplayToAssignmentId.clear();
        enrollTeacherComboBox.getItems().clear();

        if (selectedCourseDisplay == null) {
            enrollTeacherComboBox.setDisable(true);
            return;
        }

        String courseCode = enrollCourseDisplayToCode.get(selectedCourseDisplay);
        if (courseCode == null) {
            enrollTeacherComboBox.setDisable(true);
            return;
        }

        for (String[] row : CourseDAO.getTeacherAssignmentsForCourse(courseCode)) {
            int assignmentId = Integer.parseInt(row[0]);
            String teacherUsername = row[1];
            String teacherName = row[2];
            String display = teacherName + " (" + teacherUsername + ")";
            enrollTeacherDisplayToAssignmentId.put(display, assignmentId);
            enrollTeacherComboBox.getItems().add(display);
        }

        enrollTeacherComboBox.setDisable(enrollTeacherComboBox.getItems().isEmpty());
    }
}
