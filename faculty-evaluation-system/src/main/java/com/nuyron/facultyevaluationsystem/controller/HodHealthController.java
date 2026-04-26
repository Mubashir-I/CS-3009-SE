package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.DAO.HodReportsDAO;
import com.nuyron.facultyevaluationsystem.models.Session;
import javafx.collections.FXCollections;
import javafx.fxml.FXML;
import javafx.scene.chart.*;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;

import java.util.List;
import java.util.Map;

public class HodHealthController {

    @FXML private ComboBox<String>              semesterComboBox;
    @FXML private BarChart<String, Number>      semesterBarChart;
    @FXML private Label                         semesterStatusLabel;

    @FXML private LineChart<String, Number>     growthLineChart;
    @FXML private Label                         growthStatusLabel;

    private String department;

    public void initialize() {
        department = Session.hodDepartment;

        if (department == null || department.isBlank()) {
            semesterStatusLabel.setText("HOD department not configured.");
            growthStatusLabel.setText("HOD department not configured.");
            return;
        }

        loadSemesterComboBox();
        loadGrowthChart();
    }


    private void loadSemesterComboBox() {
        List<String> sems = HodReportsDAO.getSemestersWithData(department);
        semesterComboBox.setItems(FXCollections.observableArrayList(sems));

        if (sems.isEmpty()) {
            semesterStatusLabel.setText("No semester data found for department: " + department);
        } else {
            String latest = sems.get(sems.size() - 1);
            semesterComboBox.setValue(latest);
            loadSemesterChart(latest);
        }
    }

    @FXML
    private void onSemesterChanged() {
        String selected = semesterComboBox.getValue();
        if (selected != null) {
            loadSemesterChart(selected);
        }
    }

    private void loadSemesterChart(String semester) {
        semesterBarChart.getData().clear();
        Map<String, Double> scores = HodReportsDAO.getAvgScoresByFactor(department, semester);

        if (scores.isEmpty()) {
            semesterStatusLabel.setText("No response data for " + semester + ".");
            return;
        }
        semesterStatusLabel.setText("");

        XYChart.Series<String, Number> series = new XYChart.Series<>();
        series.setName(semester);

        for (Map.Entry<String, Double> entry : scores.entrySet()) {
            double rounded = Math.round(entry.getValue() * 10.0) / 10.0;
            series.getData().add(new XYChart.Data<>(entry.getKey(), rounded));
        }
        semesterBarChart.getData().add(series);
    }

    private void loadGrowthChart() {
        growthLineChart.getData().clear();

        List<String> semLabels = HodReportsDAO.getLastNSemesters(department, 8);
        if (semLabels.isEmpty()) {
            growthStatusLabel.setText("No multi-semester data available yet.");
            return;
        }
        growthStatusLabel.setText("");

        CategoryAxis xAxis = (CategoryAxis) growthLineChart.getXAxis();
        xAxis.setCategories(FXCollections.observableArrayList(semLabels));

        Map<String, List<double[]>> trendData = HodReportsDAO.getFactorTrendData(department, 8);

        for (Map.Entry<String, List<double[]>> entry : trendData.entrySet()) {
            XYChart.Series<String, Number> series = new XYChart.Series<>();
            series.setName(entry.getKey());

            List<double[]> points = entry.getValue();
            for (int i = 0; i < points.size() && i < semLabels.size(); i++) {
                double score = Math.round(points.get(i)[1] * 10.0) / 10.0;
                series.getData().add(new XYChart.Data<>(semLabels.get(i), score));
            }
            growthLineChart.getData().add(series);
        }
    }
}
