package com.nuyron.facultyevaluationsystem.DAO;

import com.nuyron.facultyevaluationsystem.DatabaseConnection;
import com.nuyron.facultyevaluationsystem.DAO.FormScheduleDAO;

import java.sql.*;
import java.util.*;

public class HodReportsDAO {

    private HodReportsDAO() {}

    public static List<String> getSemestersWithData(String department) {
        List<String> list = new ArrayList<>();
        String sql = "SELECT DISTINCT fs.semester " +
                     "FROM form_schedules fs " +
                     "JOIN form_responses fr ON fr.schedule_id = fs.id " +
                     "WHERE fr.department = ? AND fs.semester IS NOT NULL";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, department);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) list.add(rs.getString("semester"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        list.sort(FormScheduleDAO::compareSemesters);
        return list;
    }

    public static Map<String, Double> getAvgScoresByFactor(String department, String semester) {
        Map<String, Double> map = new LinkedHashMap<>();
        String sql = "SELECT ra.perf_factor, AVG(ra.numeric_score) AS avg_score " +
                     "FROM response_answers ra " +
                     "JOIN form_responses fr ON ra.response_id = fr.id " +
                     "JOIN form_schedules fs ON fr.schedule_id = fs.id " +
                     "WHERE fr.department = ? AND fs.semester = ? " +
                     "  AND ra.numeric_score IS NOT NULL " +
                     "GROUP BY ra.perf_factor " +
                     "ORDER BY ra.perf_factor";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, department);
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

    public static Map<String, List<double[]>> getFactorTrendData(String department, int lastN) {
        List<String> allSems = getSemestersWithData(department);
        int start = Math.max(0, allSems.size() - lastN);
        List<String> sems = allSems.subList(start, allSems.size());

        if (sems.isEmpty()) return new LinkedHashMap<>();

        StringBuilder inClause = new StringBuilder();
        for (int i = 0; i < sems.size(); i++) {
            if (i > 0) inClause.append(",");
            inClause.append("?");
        }

        String sql = "SELECT fs.semester, ra.perf_factor, AVG(ra.numeric_score) AS avg_score " +
                     "FROM response_answers ra " +
                     "JOIN form_responses fr ON ra.response_id = fr.id " +
                     "JOIN form_schedules fs ON fr.schedule_id = fs.id " +
                     "WHERE fr.department = ? AND fs.semester IN (" + inClause + ") " +
                     "  AND ra.numeric_score IS NOT NULL " +
                     "GROUP BY fs.semester, ra.perf_factor " +
                     "ORDER BY ra.perf_factor, fs.semester";

        Map<String, double[]> factorSemScore = new LinkedHashMap<>();

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, department);
            for (int i = 0; i < sems.size(); i++) {
                stmt.setString(i + 2, sems.get(i));
            }
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    String factor = rs.getString("perf_factor");
                    String sem    = rs.getString("semester");
                    double score  = rs.getDouble("avg_score");
                    factorSemScore.computeIfAbsent(factor, k -> new double[sems.size()]);
                    int idx = sems.indexOf(sem);
                    if (idx >= 0) factorSemScore.get(factor)[idx] = score;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        Map<String, List<double[]>> result = new LinkedHashMap<>();
        for (Map.Entry<String, double[]> entry : factorSemScore.entrySet()) {
            List<double[]> points = new ArrayList<>();
            double[] scores = entry.getValue();
            for (int i = 0; i < sems.size(); i++) {
                points.add(new double[]{i, scores[i]});
            }
            result.put(entry.getKey(), points);
        }
        return result;
    }

    public static List<String> getLastNSemesters(String department, int lastN) {
        List<String> all = getSemestersWithData(department);
        int start = Math.max(0, all.size() - lastN);
        return all.subList(start, all.size());
    }

    public static List<String[]> getInstructorOverallScores(String department, String courseCode) {
        List<String[]> list = new ArrayList<>();
        String sql = "SELECT u.name AS teacher_name, fr.teacher_username, " +
                     "       AVG(ra.numeric_score) AS avg_score " +
                     "FROM response_answers ra " +
                     "JOIN form_responses fr ON ra.response_id = fr.id " +
                     "JOIN users u ON u.username = fr.teacher_username " +
                     "WHERE fr.department = ? AND fr.course_code = ? " +
                     "  AND ra.numeric_score IS NOT NULL " +
                     "GROUP BY fr.teacher_username, u.name " +
                     "ORDER BY avg_score DESC";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, department);
            stmt.setString(2, courseCode);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    list.add(new String[]{
                            rs.getString("teacher_name"),
                            rs.getString("teacher_username"),
                            String.valueOf(rs.getDouble("avg_score"))
                    });
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static List<String[]> getInstructorFactorScores(String department, String courseCode) {
        List<String[]> list = new ArrayList<>();
        String sql = "SELECT u.name AS teacher_name, ra.perf_factor, " +
                     "       AVG(ra.numeric_score) AS avg_score " +
                     "FROM response_answers ra " +
                     "JOIN form_responses fr ON ra.response_id = fr.id " +
                     "JOIN users u ON u.username = fr.teacher_username " +
                     "WHERE fr.department = ? AND fr.course_code = ? " +
                     "  AND ra.numeric_score IS NOT NULL " +
                     "GROUP BY fr.teacher_username, u.name, ra.perf_factor " +
                     "ORDER BY u.name, ra.perf_factor";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, department);
            stmt.setString(2, courseCode);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    list.add(new String[]{
                            rs.getString("teacher_name"),
                            rs.getString("perf_factor"),
                            String.valueOf(rs.getDouble("avg_score"))
                    });
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static List<String[]> getCoursesWithResponses(String department) {
        List<String[]> list = new ArrayList<>();
        String sql = "SELECT DISTINCT c.course_code, c.course_name " +
                     "FROM form_responses fr " +
                     "JOIN courses c ON c.course_code = fr.course_code " +
                     "WHERE fr.department = ? " +
                     "ORDER BY c.course_code";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, department);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    list.add(new String[]{
                            rs.getString("course_code"),
                            rs.getString("course_name")
                    });
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
