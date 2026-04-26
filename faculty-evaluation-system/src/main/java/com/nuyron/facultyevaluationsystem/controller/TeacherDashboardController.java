package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.DAO.TeacherDAO;
import com.nuyron.facultyevaluationsystem.DAO.SessionLogDAO;
import com.nuyron.facultyevaluationsystem.models.SceneTools;
import com.nuyron.facultyevaluationsystem.models.Session;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.effect.Effect;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class TeacherDashboardController {
    @FXML
    private Button logoutButton;
    @FXML
    private Label contentTitleLabel;
    @FXML private VBox assignedCoursesPane;
    @FXML private VBox feedbackSummaryPane;
    @FXML private VBox reviewsPane;
    @FXML private VBox mainContentVBox;
    @FXML private StackPane growthContent;

    @FXML
    private TableView<String[]> assignedCoursesTable;
    @FXML
    private TableColumn<String[], String> courseCodeColumn;
    @FXML
    private TableColumn<String[], String> courseNameColumn;
    @FXML
    private TableColumn<String[], String> enrolledStudentsColumn;
    @FXML
    private TableColumn<String[], String> feedbackCountColumn;

    @FXML
    private TableView<String[]> feedbackSummaryTable;
    @FXML
    private TableColumn<String[], String> summaryCourseColumn;
    @FXML
    private TableColumn<String[], String> clarityAvgColumn;
    @FXML
    private TableColumn<String[], String> difficultyAvgColumn;
    @FXML
    private TableColumn<String[], String> fairnessAvgColumn;
    @FXML
    private TableColumn<String[], String> engagementAvgColumn;
    @FXML
    private TableColumn<String[], String> workloadAvgColumn;
    @FXML
    private TableColumn<String[], String> responsesColumn;

    @FXML
    private TableView<String[]> reviewsTable;
    @FXML
    private TableColumn<String[], String> reviewCourseColumn;
    @FXML
    private TableColumn<String[], String> reviewDateColumn;
    @FXML
    private TableColumn<String[], String> reviewOverallColumn;
    @FXML
    private TableColumn<String[], String> reviewCommentAvailableColumn;
    @FXML
    private Label reviewsStatusLabel;
    @FXML
    private Button viewCommentButton;

    private final String onPressColor = "#40758A";
    private final Map<Button, Effect> originalEffects = new HashMap<>();

    @FXML
    public void initialize() {
        setupAssignedCoursesTable();
        setupFeedbackSummaryTable();
        setupReviewsTable();
        loadAssignedCourses();
        loadFeedbackSummary();
        loadReviews();
        onAssignedCoursesClick();
    }

    @FXML
    private void onAssignedCoursesClick() {
        showOnly(assignedCoursesPane, "Assigned Courses");
    }

    @FXML
    private void onFeedbackSummaryClick() {
        showOnly(feedbackSummaryPane, "Feedback Summary");
    }

    @FXML
    private void onReviewsClick() {
        showOnly(reviewsPane, "Reviews");
    }

    @FXML
    private void onGrowthClick() {
        mainContentVBox.setVisible(false);
        mainContentVBox.setManaged(false);
        growthContent.setVisible(true);
        growthContent.setManaged(true);
        loadGrowthContent();
    }

    private void showOnly(VBox target, String title) {
        mainContentVBox.setVisible(true);
        mainContentVBox.setManaged(true);
        growthContent.setVisible(false);
        growthContent.setManaged(false);
        contentTitleLabel.setText(title);

        for (VBox pane : new VBox[]{assignedCoursesPane, feedbackSummaryPane, reviewsPane}) {
            pane.setVisible(pane == target);
            pane.setManaged(pane == target);
        }
    }

    private void loadGrowthContent() {
        if (!growthContent.getChildren().isEmpty()) return; // already loaded
        try {
            FXMLLoader loader = new FXMLLoader(
                    getClass().getResource("/com/nuyron/facultyevaluationsystem/TeacherGrowth.fxml"));
            Parent view = loader.load();
            
            if (view instanceof javafx.scene.control.TabPane) {
                javafx.scene.control.TabPane tp = (javafx.scene.control.TabPane) view;
                tp.prefWidthProperty().bind(growthContent.widthProperty());
                tp.prefHeightProperty().bind(growthContent.heightProperty());
            }
            growthContent.getChildren().setAll(view);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @FXML
    private void onViewCommentClick() throws IOException {
        String[] selected = reviewsTable.getSelectionModel().getSelectedItem();
        if (selected == null) {
            reviewsStatusLabel.setText("Please select a review first.");
            return;
        }

        if (!"Yes".equalsIgnoreCase(selected[4])) {
            reviewsStatusLabel.setText("No comment exists for the selected review.");
            return;
        }

        Session.selectedFeedbackId = Integer.parseInt(selected[0]);
        SceneTools.changeScene("TeacherReviewDetail.fxml", logoutButton);
    }

    @FXML
    private void onLogoutButtonClick() throws IOException {
        SessionLogDAO.logLogout(Session.sessionLogId != null ? Session.sessionLogId : -1);
        Session.clear();
        SceneTools.changeScene("LoginPage.fxml", logoutButton);
    }

    @FXML
    private void onPressedLogout(MouseEvent event) {
        Button b = (Button) event.getSource();
        b.setUserData(b.getStyle());
        originalEffects.put(b, b.getEffect());
        b.setStyle("-fx-background-color: " + onPressColor + "; -fx-background-radius: 20;");
        b.setEffect(null);
    }

    @FXML
    private void onReleaseLogout(MouseEvent event) {
        Button b = (Button) event.getSource();
        b.setStyle((String) b.getUserData());
        b.setEffect(originalEffects.get(b));
    }

    @FXML
    private void onPressedSidebarButton(MouseEvent event) {
        Button b = (Button) event.getSource();
        b.setUserData(b.getStyle());
        originalEffects.put(b, b.getEffect());
        b.setStyle("-fx-background-color: " + onPressColor + ";");
        b.setEffect(null);
    }

    @FXML
    private void onReleaseSidebarButton(MouseEvent event) {
        Button b = (Button) event.getSource();
        b.setStyle((String) b.getUserData());
        b.setEffect(originalEffects.get(b));
    }

    private void setupAssignedCoursesTable() {
        courseCodeColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[0]));
        courseNameColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[1]));
        enrolledStudentsColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[2]));
        feedbackCountColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[3]));
    }

    private void setupFeedbackSummaryTable() {
        summaryCourseColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[0]));
        clarityAvgColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[1]));
        difficultyAvgColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[2]));
        fairnessAvgColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[3]));
        engagementAvgColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[4]));
        workloadAvgColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[5]));
        responsesColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[6]));
    }

    private void setupReviewsTable() {
        reviewCourseColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[1]));
        reviewDateColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[2]));
        reviewOverallColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[3]));
        reviewCommentAvailableColumn.setCellValueFactory(data -> new SimpleStringProperty(data.getValue()[4]));

        // Only allow opening comment detail when a review row is selected.
        viewCommentButton.disableProperty().bind(
                reviewsTable.getSelectionModel().selectedItemProperty().isNull()
        );

        reviewsTable.getSelectionModel().selectedItemProperty().addListener((obs, oldValue, newValue) -> {
            if (newValue != null) {
                reviewsStatusLabel.setText("");
            }
        });
    }

    private void loadAssignedCourses() {
        if (Session.currentUser == null) {
            return;
        }

        assignedCoursesTable.setItems(FXCollections.observableArrayList(
                TeacherDAO.getAssignedCoursesForTeacher(Session.currentUser.getUsername())
        ));
    }

    private void loadFeedbackSummary() {
        if (Session.currentUser == null) {
            return;
        }

        feedbackSummaryTable.setItems(FXCollections.observableArrayList(
                TeacherDAO.getFeedbackSummaryForTeacher(Session.currentUser.getUsername())
        ));
    }

    private void loadReviews() {
        if (Session.currentUser == null) {
            return;
        }

        reviewsTable.setItems(FXCollections.observableArrayList(
                TeacherDAO.getReviewRowsForTeacher(Session.currentUser.getUsername())
        ));

        if (reviewsTable.getItems().isEmpty()) {
            reviewsStatusLabel.setText("No reviews available yet.");
        } else {
            reviewsStatusLabel.setText("");
        }
    }
}

