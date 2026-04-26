package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.models.*;
import com.nuyron.facultyevaluationsystem.DAO.*;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;

import java.io.IOException;

public class LoginController {
    @FXML
    private Label timeLabel;
    @FXML
    private TextField loginIDTextField;
    @FXML
    private PasswordField passwordPasswordField;
    @FXML
    private Label errorLabel;

    public void initialize() {
        String timeNow = SceneTools.getCurrentTime();
        timeLabel.setText(timeNow);
        errorLabel.setText("");
    }

    @FXML
    private void handleSignIn() throws IOException {
        String login_id = loginIDTextField.getText();
        String password = passwordPasswordField.getText();

        User user = UserDAO.login(login_id, password);

        if (user != null) {

            Session.currentUser = user;
            Session.sessionLogId   = SessionLogDAO.logLogin(user.getUsername(), user.getRole());
            Session.loginTimeMillis = System.currentTimeMillis();

            System.out.println(login_id + " logged in at " + SceneTools.getCurrentTime());

            switch (user.getRole()) {

                case "ADMIN":
                    SceneTools.changeScene("AdminDashboard.fxml", errorLabel);
                    break;

                case "TEACHER":
                    SceneTools.changeScene("TeacherDashboard.fxml", errorLabel);
                    break;

                case "STUDENT":
                    SceneTools.changeScene("StudentDashboard.fxml", errorLabel);
                    break;

                case "HOD":
                    Session.hodDepartment = UserDAO.getHodDepartment(user.getUsername());
                    SceneTools.changeScene("HodDashboard.fxml", errorLabel);
                    break;
            }

        } else {
            errorLabel.setText("Invalid username or password.");
        }
    }
}