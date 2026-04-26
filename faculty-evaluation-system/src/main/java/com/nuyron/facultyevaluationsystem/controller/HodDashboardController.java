package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.models.SceneTools;
import com.nuyron.facultyevaluationsystem.models.Session;
import com.nuyron.facultyevaluationsystem.DAO.SessionLogDAO;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TabPane;
import javafx.scene.effect.Effect;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.StackPane;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class HodDashboardController {

    @FXML private Button    logoutButton;
    @FXML private StackPane contentArea;
    @FXML private Label     hodInfoLabel;

    private final String pressColor = "#40758A";
    private final Map<Button, Effect> originalEffects = new HashMap<>();

    public void initialize() throws IOException {
        if (Session.currentUser != null) {
            String dept = Session.hodDepartment != null ? " · " + Session.hodDepartment : "";
            hodInfoLabel.setText(Session.currentUser.getName() + dept);
        }
        setView("HodHealth.fxml");
    }

    @FXML
    private void onHealthClick() throws IOException {
        setView("HodHealth.fxml");
    }

    @FXML
    private void onPerformanceClick() throws IOException {
        setView("HodPerformance.fxml");
    }

    private void setView(String fxmlName) throws IOException {
        FXMLLoader loader = new FXMLLoader(
                getClass().getResource("/com/nuyron/facultyevaluationsystem/" + fxmlName));
        Parent view = loader.load();

        if (view instanceof TabPane) {
            TabPane tp = (TabPane) view;
            tp.prefWidthProperty().bind(contentArea.widthProperty());
            tp.prefHeightProperty().bind(contentArea.heightProperty());
        }
        contentArea.getChildren().setAll(view);
    }


    @FXML
    private void onPressedLogout(MouseEvent event) {
        Button b = (Button) event.getSource();
        b.setUserData(b.getStyle());
        originalEffects.put(b, b.getEffect());
        b.setStyle("-fx-background-color: " + pressColor + "; -fx-background-radius: 20");
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
        b.setStyle("-fx-background-color: " + pressColor);
        b.setEffect(null);
    }

    @FXML
    private void onReleaseSidebarButton(MouseEvent event) {
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
}
