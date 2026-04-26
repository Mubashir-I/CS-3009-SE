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
    private TextField assignTeacherCourseCodeTextField;
    @FXML
    private TextField assignTeacherFacultyIdTextField;
    @FXML
    private Button assignTeacherButton;
    @FXML
    private Label assignFacultyFillFieldLabel;

    @FXML
    private void assignTeacherToCourse(){
        String courseCode = assignTeacherCourseCodeTextField.getText();
        String facultyID = assignTeacherFacultyIdTextField.getText();

        if(courseCode == null || courseCode.trim().isEmpty() ||
            facultyID == null || facultyID.trim().isEmpty()){
            assignFacultyFillFieldLabel.setText("*Please fill all fields");
            return;
        }
        else{
            assignFacultyFillFieldLabel.setText("");
            if(CourseDAO.assignTeacher(courseCode, facultyID)){
                SceneTools.showAlert(Alert.AlertType.INFORMATION,
                        "Success",
                        "New course added!",
                        facultyID + " has been assigned to " + courseCode);
                setupAssignmentsTable();
                initEnrollSelectors();
                assignTeacherCourseCodeTextField.setText("");
                assignTeacherFacultyIdTextField.setText("");
            }
            else{
                SceneTools.showAlert(Alert.AlertType.ERROR,
                        "Error", "Can not assign faculty to this course.",
                        "This teacher can not be assigned because either the course code or the faculty ID is invalid.");
            }
        }



    }

    public void initialize(){
        setupCoursesTable();
        setupAssignmentsTable();
        setupEnrollmentsTable();
        initEnrollSelectors();
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
        courseIdColumn.setCellValueFactory(new PropertyValueFactory<>("id"));
        courseCodeColumn.setCellValueFactory(new PropertyValueFactory<>("courseCode"));
        courseTitleColumn.setCellValueFactory(new PropertyValueFactory<>("courseName"));

        ObservableList<Course> data = FXCollections.observableArrayList(CourseDAO.getAllCourses());
        coursesTableView.setItems(data);
    }

    private void setupAssignmentsTable() {
        assignmentsIdColumn.setCellValueFactory(new PropertyValueFactory<>("id"));
        assignmentsCourseCodeColumn.setCellValueFactory(new PropertyValueFactory<>("courseCode"));
        assignmentsCourseNameColumn.setCellValueFactory(new PropertyValueFactory<>("courseName"));
        assignmentsFacultyIdColumn.setCellValueFactory(new PropertyValueFactory<>("facultyId"));
        assignmentsFacultyNameColumn.setCellValueFactory(new PropertyValueFactory<>("facultyName"));

        ObservableList<CourseAssignment> data = FXCollections.observableArrayList(CourseDAO.getAllAssignments());
        facultyaAssignmentsTableView.setItems(data);
    }

    private void setupEnrollmentsTable() {
        enrollmentsIdColumn.setCellValueFactory(new PropertyValueFactory<>("id"));
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
