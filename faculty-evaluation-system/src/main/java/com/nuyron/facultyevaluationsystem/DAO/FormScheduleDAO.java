package com.nuyron.facultyevaluationsystem.DAO;

import com.nuyron.facultyevaluationsystem.DatabaseConnection;
import com.nuyron.facultyevaluationsystem.models.FormSchedule;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FormScheduleDAO {

    public static boolean pushForm(int questionnaireId, String department,
                                   String courseCode, String semester,
                                   String startDate, String endDate,
                                   String createdBy) {

        String status = deriveStatus(startDate, endDate);

        String sql = "INSERT INTO form_schedules " +
                     "(questionnaire_id, department, course_code, semester, " +
                     " start_date, end_date, status, created_by) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, questionnaireId);
            stmt.setString(2, department);
            stmt.setString(3, courseCode);
            stmt.setString(4, (semester == null || semester.isBlank()) ? null : semester);
            stmt.setDate(5, Date.valueOf(startDate));
            stmt.setDate(6, Date.valueOf(endDate));
            stmt.setString(7, status);
            stmt.setString(8, createdBy);

            return stmt.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static List<FormSchedule> getAllSchedules() {
        List<FormSchedule> list = new ArrayList<>();
        String sql = "SELECT fs.id, fs.questionnaire_id, q.name AS questionnaire_name, " +
                     "fs.department, fs.course_code, fs.semester, " +
                     "CONVERT(VARCHAR,fs.start_date,23) AS start_date, " +
                     "CONVERT(VARCHAR,fs.end_date,23) AS end_date, " +
                     "fs.status, CONVERT(VARCHAR,fs.created_at,120) AS created_at " +
                     "FROM form_schedules fs " +
                     "JOIN questionnaires q ON q.id = fs.questionnaire_id " +
                     "ORDER BY fs.id DESC";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                list.add(mapRow(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static List<FormSchedule> getActiveSchedulesForStudent(String studentUsername) {
        List<FormSchedule> list = new ArrayList<>();
        String sql = "SELECT fs.id, fs.questionnaire_id, q.name AS questionnaire_name, " +
                     "fs.department, fs.course_code, fs.semester, " +
                     "CONVERT(VARCHAR,fs.start_date,23) AS start_date, " +
                     "CONVERT(VARCHAR,fs.end_date,23) AS end_date, " +
                     "fs.status, CONVERT(VARCHAR,fs.created_at,120) AS created_at " +
                     "FROM form_schedules fs " +
                     "JOIN questionnaires q ON q.id = fs.questionnaire_id " +
                     "WHERE fs.status = 'ACTIVE' " +
                     "  AND CAST(GETDATE() AS DATE) >= fs.start_date " +
                     "  AND CAST(GETDATE() AS DATE) <= fs.end_date " +
                     "  AND fs.course_code IN ( " +
                     "      SELECT ca.course_id " +
                     "      FROM student_enrollments se " +
                     "      JOIN course_assignments ca ON se.assignment_id = ca.id " +
                     "      WHERE se.student_username = ? " +
                     "  ) " +
                     "  AND fs.id NOT IN ( " +
                     "      SELECT schedule_id " +
                     "      FROM form_responses " +
                     "      WHERE student_username = ? " +
                     "  ) " +
                     "ORDER BY fs.end_date ASC";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, studentUsername);
            stmt.setString(2, studentUsername);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    list.add(mapRow(rs));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static List<String> getDepartments() {
        List<String> list = new ArrayList<>();
        String sql = "SELECT DISTINCT department FROM courses ORDER BY department";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) list.add(rs.getString("department"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static List<String[]> getCoursesByDepartment(String department) {
        List<String[]> list = new ArrayList<>();
        String sql = "SELECT course_code, course_name FROM courses " +
                     "WHERE department = ? ORDER BY course_code";
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

    public static List<String> getSemesters(String department) {
        List<String> list = new ArrayList<>();
        String sql = "SELECT DISTINCT semester FROM form_schedules " +
                     "WHERE department = ? AND semester IS NOT NULL";
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

    private static FormSchedule mapRow(ResultSet rs) throws SQLException {
        return new FormSchedule(
                rs.getInt("id"),
                rs.getInt("questionnaire_id"),
                rs.getString("questionnaire_name"),
                rs.getString("department"),
                rs.getString("course_code"),
                rs.getString("semester"),
                rs.getString("start_date"),
                rs.getString("end_date"),
                rs.getString("status"),
                rs.getString("created_at")
        );
    }

    public static int compareSemesters(String a, String b) {
        if (a == null) return -1;
        if (b == null) return 1;
        String[] pa = a.split(" ", 2);
        String[] pb = b.split(" ", 2);
        if (pa.length < 2 || pb.length < 2) return a.compareTo(b);
        int yearCmp = Integer.compare(parseYear(pa[1]), parseYear(pb[1]));
        if (yearCmp != 0) return yearCmp;
        return Integer.compare(seasonOrder(pa[0]), seasonOrder(pb[0]));
    }

    private static int parseYear(String s) {
        try { return Integer.parseInt(s.trim()); } catch (Exception e) { return 0; }
    }

    private static int seasonOrder(String season) {
        switch (season) {
            case "Spring": return 0;
            case "Summer": return 1;
            case "Fall":   return 2;
            default:       return 3;
        }
    }

    private static String deriveStatus(String startDate, String endDate) {
        try {
            Date today = new Date(System.currentTimeMillis());
            Date start = Date.valueOf(startDate);
            Date end   = Date.valueOf(endDate);
            if (today.before(start)) return "PENDING";
            if (today.after(end))   return "CLOSED";
            return "ACTIVE";
        } catch (Exception e) {
            return "ACTIVE";
        }
    }
}
