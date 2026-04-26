package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.DAO.TeacherReportsDAO;
import com.nuyron.facultyevaluationsystem.models.Session;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.fxml.FXML;
import javafx.scene.chart.*;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;

import java.util.*;

public class TeacherGrowthController {

    @FXML private ComboBox<String>           semesterComboBox;
    @FXML private BarChart<String, Number>   factorBarChart;
    @FXML private Label                      factorStatusLabel;

    @FXML private LineChart<String, Number>  growthLineChart;
    @FXML private Label                      growthStatusLabel;

    private String teacherUsername;

    public void initialize() {
        if (Session.currentUser == null) return;
        teacherUsername = Session.currentUser.getUsername();

        loadSemesterComboBox();
        loadGrowthTrend();
    }

    private void loadSemesterComboBox() {
        List<String> sems = TeacherReportsDAO.getSemestersForTeacher(teacherUsername);
        semesterComboBox.setItems(FXCollections.observableArrayList(sems));

        if (sems.isEmpty()) {
            factorStatusLabel.setText("No semester data available for your account yet.");
        } else {
            String latest = sems.get(sems.size() - 1);
            semesterComboBox.setValue(latest);
            loadFactorChart(latest);
        }
    }

    @FXML
    private void onSemesterChanged() {
        String sel = semesterComboBox.getValue();
        if (sel != null) loadFactorChart(sel);
    }

    private void loadFactorChart(String semester) {
        factorBarChart.getData().clear();
        Map<String, Double> scores = TeacherReportsDAO.getFactorScoresForSemester(teacherUsername, semester);

        if (scores.isEmpty()) {
            factorStatusLabel.setText("No response data for " + semester + ".");
            return;
        }
        factorStatusLabel.setText("");

        XYChart.Series<String, Number> series = new XYChart.Series<>();
        series.setName(semester);

        for (Map.Entry<String, Double> entry : scores.entrySet()) {
            double rounded = Math.round(entry.getValue() * 10.0) / 10.0;
            series.getData().add(new XYChart.Data<>(entry.getKey(), rounded));
        }
        factorBarChart.getData().add(series);
    }

    private void loadGrowthTrend() {
        growthLineChart.getData().clear();

        List<String> semLabels = TeacherReportsDAO.getSemesterLabels(teacherUsername);
        if (semLabels.isEmpty()) {
            growthStatusLabel.setText("No multi-semester data available yet.");
            return;
        }
        growthStatusLabel.setText("");

        CategoryAxis xAxis = (CategoryAxis) growthLineChart.getXAxis();
        xAxis.setCategories(FXCollections.observableArrayList(semLabels));

        List<String[]> rows = TeacherReportsDAO.getOverallGrowthTrend(teacherUsername);

        Map<String, XYChart.Series<String, Number>> seriesMap = new LinkedHashMap<>();
        for (String[] row : rows) {
            String factor  = row[0];
            String sem     = row[1];
            double score   = Double.parseDouble(row[2]);

            seriesMap.computeIfAbsent(factor, k -> {
                XYChart.Series<String, Number> s = new XYChart.Series<>();
                s.setName(k);
                return s;
            }).getData().add(new XYChart.Data<>(sem, score));
        }

        growthLineChart.getData().addAll(seriesMap.values());
    }
}
