package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.models.*;
import com.nuyron.facultyevaluationsystem.DAO.SessionLogDAO;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.control.Button;
import javafx.scene.control.TabPane;
import javafx.scene.effect.Effect;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.StackPane;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class AdminDashboardController {
    @FXML
    private Button logoutButton;
    @FXML
    private Button formsButton;
    @FXML
    private StackPane contentArea;
    String logoutOnPressColor = "#40758A";
    Map<Button, Effect> originalEffects = new HashMap<>();

    public void initialize() throws IOException {
        setView("AdminUsers.fxml");
    }

    @FXML
    private void onPressedLogout(MouseEvent event) {
        Button b = (Button) event.getSource();
        b.setUserData(b.getStyle());
        originalEffects.put(b, b.getEffect());
        b.setStyle("-fx-background-color: " + logoutOnPressColor + "; -fx-background-radius: 20");
        b.setEffect(null);
    }

    @FXML
    private void onReleaseLogout(MouseEvent event){
        Button b = (Button) event.getSource();
        b.setStyle((String) b.getUserData());
        b.setEffect(originalEffects.get(b));
    }

    @FXML
    private void onLogoutButtonClick() throws IOException {
        SessionLogDAO.logLogout(Session.sessionLogId != null ? Session.sessionLogId : -1);
        Session.clear();
        SceneTools.changeScene("LoginPage.fxml", logoutButton);
    }

    @FXML
    private void onPressedSidebarButton(MouseEvent event) {
        Button b = (Button) event.getSource();
        b.setUserData(b.getStyle());
        originalEffects.put(b, b.getEffect());
        b.setStyle("-fx-background-color: " + logoutOnPressColor);
        b.setEffect(null);
    }

    @FXML
    private void onReleaseSidebarButton(MouseEvent event){
        Button b = (Button) event.getSource();
        b.setStyle((String) b.getUserData());
        b.setEffect(originalEffects.get(b));
    }

    @FXML
    private void setView(String fxmlPath) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource("/com/nuyron/facultyevaluationsystem/" + fxmlPath));
        Parent view = fxmlLoader.load();

        if (view instanceof TabPane){
           TabPane tp = (TabPane) view;
           tp.prefWidthProperty().bind(contentArea.widthProperty());
           tp.prefHeightProperty().bind(contentArea.heightProperty());
        }

        contentArea.getChildren().setAll(view);
    }

    @FXML
    private void onUsersButtonClick() throws IOException {
        setView("AdminUsers.fxml");
    }

    @FXML
    private void onCoursesButtonClick() throws IOException{
        setView("AdminCourses.fxml");
    }

    @FXML
    private void onFormsButtonClick() throws IOException {
        setView("AdminForms.fxml");
    }

    @FXML
    private void onReportsButtonClick() throws IOException {
        setView("AdminReports.fxml");
    }

    @FXML
    private void onLogsButtonClick() throws IOException {
        setView("AdminLogs.fxml");
    }
}
