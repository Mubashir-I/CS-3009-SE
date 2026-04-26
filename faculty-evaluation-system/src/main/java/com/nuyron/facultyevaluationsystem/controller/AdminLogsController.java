package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.DAO.SessionLogDAO;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.fxml.FXML;
import javafx.scene.control.*;

import java.util.List;

public class AdminLogsController {

    @FXML private TableView<String[]>           logsTableView;
    @FXML private TableColumn<String[], String>  colId;
    @FXML private TableColumn<String[], String>  colUsername;
    @FXML private TableColumn<String[], String>  colRole;
    @FXML private TableColumn<String[], String>  colLoginAt;
    @FXML private TableColumn<String[], String>  colLogoutAt;
    @FXML private TableColumn<String[], String>  colDuration;
    @FXML private Label                          summaryLabel;

    public void initialize() {
        colId.setCellValueFactory(d -> new SimpleStringProperty(d.getValue()[0]));
        colUsername.setCellValueFactory(d -> new SimpleStringProperty(d.getValue()[1]));
        colRole.setCellValueFactory(d -> new SimpleStringProperty(d.getValue()[2]));
        colLoginAt.setCellValueFactory(d -> new SimpleStringProperty(d.getValue()[3]));
        colLogoutAt.setCellValueFactory(d -> new SimpleStringProperty(d.getValue()[4]));
        colDuration.setCellValueFactory(d -> new SimpleStringProperty(d.getValue()[5]));
        loadLogs();
    }

    @FXML
    private void onRefreshClick() {
        loadLogs();
    }

    private void loadLogs() {
        List<String[]> rows = SessionLogDAO.getAllLogs();
        logsTableView.setItems(FXCollections.observableArrayList(rows));

        long active = rows.stream().filter(r -> "Active".equals(r[4])).count();
        summaryLabel.setText("Total sessions: " + rows.size() + "   ·   Currently active: " + active);
    }
}
