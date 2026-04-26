package com.nuyron.facultyevaluationsystem.controller;

import com.nuyron.facultyevaluationsystem.DAO.HodReportsDAO;
import com.nuyron.facultyevaluationsystem.models.Session;
import javafx.collections.FXCollections;
import javafx.fxml.FXML;
import javafx.scene.chart.*;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;

import java.util.*;

public class HodPerformanceController {

    @FXML private ComboBox<String>          hpCourseComboBox;
    @FXML private BarChart<String, Number>  highPerformerChart;
    @FXML private Label                     hpStatusLabel;

    @FXML private ComboBox<String>          iaCourseComboBox;
    @FXML private BarChart<String, Number>  instructorAnalysisChart;
    @FXML private Label                     iaStatusLabel;

    private String department;

    private final Map<String, String> courseDisplayToCode = new LinkedHashMap<>();

    public void initialize() {
        department = Session.hodDepartment;

        if (department == null || department.isBlank()) {
            hpStatusLabel.setText("HOD department not configured.");
            iaStatusLabel.setText("HOD department not configured.");
            return;
        }

        loadCourseComboBoxes();
    }

    private void loadCourseComboBoxes() {
        List<String[]> courses = HodReportsDAO.getCoursesWithResponses(department);
        courseDisplayToCode.clear();
        List<String> displayList = new ArrayList<>();

        for (String[] c : courses) {
            String display = c[0] + " — " + c[1];
            courseDisplayToCode.put(display, c[0]);
            displayList.add(display);
        }

        hpCourseComboBox.setItems(FXCollections.observableArrayList(displayList));
        iaCourseComboBox.setItems(FXCollections.observableArrayList(displayList));

        if (!displayList.isEmpty()) {
            hpCourseComboBox.setValue(displayList.get(0));
            iaCourseComboBox.setValue(displayList.get(0));
            loadHighPerformerChart(courseDisplayToCode.get(displayList.get(0)));
            loadInstructorAnalysisChart(courseDisplayToCode.get(displayList.get(0)));
        } else {
            hpStatusLabel.setText("No response data available for your department.");
            iaStatusLabel.setText("No response data available for your department.");
        }
    }

    @FXML
    private void onHpCourseChanged() {
        String display = hpCourseComboBox.getValue();
        if (display == null) return;
        String code = courseDisplayToCode.get(display);
        if (code != null) loadHighPerformerChart(code);
    }

    private void loadHighPerformerChart(String courseCode) {
        highPerformerChart.getData().clear();
        List<String[]> rows = HodReportsDAO.getInstructorOverallScores(department, courseCode);

        if (rows.isEmpty()) {
            hpStatusLabel.setText("No data for this course yet.");
            return;
        }
        hpStatusLabel.setText("");

        XYChart.Series<String, Number> series = new XYChart.Series<>();
        series.setName("Overall Avg Score");

        for (String[] row : rows) {
            String teacherName = row[0];
            double score = Math.round(Double.parseDouble(row[2]) * 10.0) / 10.0;
            series.getData().add(new XYChart.Data<>(teacherName, score));
        }
        highPerformerChart.getData().add(series);
    }

    @FXML
    private void onIaCourseChanged() {
        String display = iaCourseComboBox.getValue();
        if (display == null) return;
        String code = courseDisplayToCode.get(display);
        if (code != null) loadInstructorAnalysisChart(code);
    }

    private void loadInstructorAnalysisChart(String courseCode) {
        instructorAnalysisChart.getData().clear();
        List<String[]> rows = HodReportsDAO.getInstructorFactorScores(department, courseCode);

        if (rows.isEmpty()) {
            iaStatusLabel.setText("No data for this course yet.");
            return;
        }
        iaStatusLabel.setText("");

        Map<String, XYChart.Series<String, Number>> seriesMap = new LinkedHashMap<>();
        Set<String> factors = new LinkedHashSet<>();

        for (String[] row : rows) {
            String teacher = row[0];
            String factor  = row[1];
            double score   = Math.round(Double.parseDouble(row[2]) * 10.0) / 10.0;
            factors.add(factor);

            seriesMap.computeIfAbsent(teacher, k -> {
                XYChart.Series<String, Number> s = new XYChart.Series<>();
                s.setName(k);
                return s;
            }).getData().add(new XYChart.Data<>(factor, score));
        }

        instructorAnalysisChart.getData().addAll(seriesMap.values());
    }
}
