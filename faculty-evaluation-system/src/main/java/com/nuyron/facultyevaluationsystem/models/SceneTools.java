package com.nuyron.facultyevaluationsystem.models;

import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.stage.Stage;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class SceneTools {
    public static void changeScene(String fxmlName, Node node) throws IOException {
        Stage currentStage = (Stage) node.getScene().getWindow();
        FXMLLoader fxmlLoader = new FXMLLoader(SceneTools.class.getResource("/com/nuyron/facultyevaluationsystem/" + fxmlName));
        Scene newScene = new Scene(fxmlLoader.load());
        currentStage.setScene(newScene);
        currentStage.show();
    }

    public static String getCurrentTime(){
        return LocalDateTime.now().format(DateTimeFormatter.ofPattern("hh:mm a"));
    }

    public static void showAlert(Alert.AlertType type, String title, String headerText, String contentText){
        Alert alert = new Alert(type);
        alert.setTitle(title);
        alert.setHeaderText(headerText);
        alert.setContentText(contentText);
        alert.showAndWait();
    }
}
