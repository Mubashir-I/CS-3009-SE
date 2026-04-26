package com.nuyron.facultyevaluationsystem.DAO;

import com.nuyron.facultyevaluationsystem.DatabaseConnection;
import com.nuyron.facultyevaluationsystem.DAO.FormScheduleDAO;

import java.sql.*;
import java.util.*;

public class TeacherReportsDAO {

    private TeacherReportsDAO() {}

    public static List<String> getSemestersForTeacher(String teacherUsername) {
        List<String> list = new ArrayList<>();
        String sql = "SELECT DISTINCT fs.semester " +
                     "FROM form_schedules fs " +
                     "JOIN form_responses fr ON fr.schedule_id = fs.id " +
                     "WHERE fr.teacher_username = ? AND fs.semester IS NOT NULL";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, teacherUsername);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) list.add(rs.getString("semester"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        list.sort(FormScheduleDAO::compareSemesters);
        return list;
    }

    public static Map<String, Double> getFactorScoresForSemester(String teacherUsername, String semester) {
        Map<String, Double> map = new LinkedHashMap<>();
        String sql = "SELECT ra.perf_factor, AVG(ra.numeric_score) AS avg_score " +
                     "FROM response_answers ra " +
                     "JOIN form_responses fr ON ra.response_id = fr.id " +
                     "JOIN form_schedules fs ON fr.schedule_id = fs.id " +
                     "WHERE fr.teacher_username = ? AND fs.semester = ? " +
                     "  AND ra.numeric_score IS NOT NULL " +
                     "GROUP BY ra.perf_factor " +
                     "ORDER BY ra.perf_factor";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, teacherUsername);
            stmt.setString(2, semester);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    map.put(rs.getString("perf_factor"), rs.getDouble("avg_score"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return map;
    }

    public static List<String[]> getOverallGrowthTrend(String teacherUsername) {
        List<String> sems = getSemestersForTeacher(teacherUsername);
        if (sems.isEmpty()) return new ArrayList<>();

        StringBuilder inClause = new StringBuilder();
        for (int i = 0; i < sems.size(); i++) {
            if (i > 0) inClause.append(",");
            inClause.append("?");
        }

        String sql = "SELECT fs.semester, ra.perf_factor, AVG(ra.numeric_score) AS avg_score " +
                     "FROM response_answers ra " +
                     "JOIN form_responses fr ON ra.response_id = fr.id " +
                     "JOIN form_schedules fs ON fr.schedule_id = fs.id " +
                     "WHERE fr.teacher_username = ? " +
                     "  AND fs.semester IN (" + inClause + ") " +
                     "  AND ra.numeric_score IS NOT NULL " +
                     "GROUP BY fs.semester, ra.perf_factor " +
                     "ORDER BY ra.perf_factor, fs.semester";

        Map<String, Map<String, Double>> factorSemMap = new LinkedHashMap<>();

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, teacherUsername);
            for (int i = 0; i < sems.size(); i++) {
                stmt.setString(i + 2, sems.get(i));
            }
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    String factor = rs.getString("perf_factor");
                    String sem    = rs.getString("semester");
                    double score  = rs.getDouble("avg_score");
                    factorSemMap.computeIfAbsent(factor, k -> new LinkedHashMap<>()).put(sem, score);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        List<String[]> result = new ArrayList<>();
        for (Map.Entry<String, Map<String, Double>> entry : factorSemMap.entrySet()) {
            for (Map.Entry<String, Double> semEntry : entry.getValue().entrySet()) {
                result.add(new String[]{
                        entry.getKey(),
                        semEntry.getKey(),
                        String.format("%.1f", semEntry.getValue())
                });
            }
        }
        return result;
    }

    public static List<String> getSemesterLabels(String teacherUsername) {
        return getSemestersForTeacher(teacherUsername);
    }
}
