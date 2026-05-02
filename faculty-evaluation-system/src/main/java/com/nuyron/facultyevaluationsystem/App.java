package com.nuyron.facultyevaluationsystem;

import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.InputStream;
import java.util.Objects;

import java.io.IOException;
import java.util.Properties;

public class App extends javafx.application.Application {
    @Override
    public void start(Stage stage) throws IOException {
        // the main central start point of the application, currently set to the LoginPage.fxml
        String startingView = "LoginPage.fxml";

        // for testing each member is working on different view that can be set in config.properties file
        try (InputStream input = getClass().getClassLoader().getResourceAsStream("config.properties")) {
            Properties prop = new Properties();
            if (input != null) {
                prop.load(input);
                startingView = prop.getProperty("app.starting_view", startingView);
            }
        } catch (IOException ex) {
            // if there is no configration file
        }

        Parent root = FXMLLoader.load(Objects.requireNonNull(getClass().getResource(startingView)));
        Scene scene = new Scene(root);
        stage.setTitle("Faculty Evaluation and Feedback System");
        stage.setScene(scene);
        stage.show();
    }
}
