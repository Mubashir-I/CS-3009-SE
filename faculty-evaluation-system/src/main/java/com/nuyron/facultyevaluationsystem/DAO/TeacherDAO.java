package com.nuyron.facultyevaluationsystem.DAO;

import com.nuyron.facultyevaluationsystem.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TeacherDAO {
    private TeacherDAO() {
    }

    public static List<String[]> getAssignedCoursesForTeacher(String teacherUsername) {
        List<String[]> rows = new ArrayList<>();

        String query =
                "SELECT c.course_code, c.course_name, " +
                        "       COUNT(DISTINCT se.student_username) AS student_count, " +
                        "       COUNT(f.id) AS feedback_count " +
                        "FROM course_assignments ca " +
                        "JOIN courses c ON ca.course_id = c.course_code " +
                        "LEFT JOIN student_enrollments se ON se.assignment_id = ca.id " +
                        "LEFT JOIN feedback f ON f.enrollment_id = se.id " +
                        "WHERE ca.teacher_username = ? " +
                        "GROUP BY c.course_code, c.course_name " +
                        "ORDER BY c.course_code";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, teacherUsername);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    rows.add(new String[]{
                            rs.getString("course_code"),
                            rs.getString("course_name"),
                            String.valueOf(rs.getInt("student_count")),
                            String.valueOf(rs.getInt("feedback_count"))
                    });
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rows;
    }

    public static List<String[]> getFeedbackSummaryForTeacher(String teacherUsername) {
        List<String[]> rows = new ArrayList<>();

        String query =
                "SELECT c.course_code, " +
                        "       COALESCE(ROUND(AVG(f.clarity_rating), 2), 0) AS clarity_avg, " +
                        "       COALESCE(ROUND(AVG(f.difficulty_rating), 2), 0) AS difficulty_avg, " +
                        "       COALESCE(ROUND(AVG(f.fairness_rating), 2), 0) AS fairness_avg, " +
                        "       COALESCE(ROUND(AVG(f.engagement_rating), 2), 0) AS engagement_avg, " +
                        "       COALESCE(ROUND(AVG(f.workload_rating), 2), 0) AS workload_avg, " +
                        "       COUNT(f.id) AS responses " +
                        "FROM course_assignments ca " +
                        "JOIN courses c ON ca.course_id = c.course_code " +
                        "LEFT JOIN student_enrollments se ON se.assignment_id = ca.id " +
                        "LEFT JOIN feedback f ON f.enrollment_id = se.id " +
                        "WHERE ca.teacher_username = ? " +
                        "GROUP BY c.course_code " +
                        "ORDER BY c.course_code";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, teacherUsername);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    rows.add(new String[]{
                            rs.getString("course_code"),
                            rs.getString("clarity_avg"),
                            rs.getString("difficulty_avg"),
                            rs.getString("fairness_avg"),
                            rs.getString("engagement_avg"),
                            rs.getString("workload_avg"),
                            String.valueOf(rs.getInt("responses"))
                    });
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rows;
    }

    public static List<String[]> getReviewRowsForTeacher(String teacherUsername) {
        List<String[]> rows = new ArrayList<>();

        String query =
                "SELECT f.id AS feedback_id, c.course_name, " +
                        "       FORMAT(f.created_at, 'yyyy-MM-dd HH:mm') AS submitted_at, " +
                        "       ROUND((f.clarity_rating + f.difficulty_rating + f.fairness_rating + f.engagement_rating + f.workload_rating) / 5.0, 2) AS overall_rating, " +
                        "       CASE WHEN f.comment IS NULL OR TRIM(f.comment) = '' THEN 'No' ELSE 'Yes' END AS has_comment " +
                        "FROM feedback f " +
                        "JOIN student_enrollments se ON f.enrollment_id = se.id " +
                        "JOIN course_assignments ca ON se.assignment_id = ca.id " +
                        "JOIN courses c ON ca.course_id = c.course_code " +
                        "WHERE ca.teacher_username = ? " +
                        "ORDER BY f.created_at DESC";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, teacherUsername);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    rows.add(new String[]{
                            String.valueOf(rs.getInt("feedback_id")),
                            rs.getString("course_name"),
                            rs.getString("submitted_at"),
                            rs.getString("overall_rating"),
                            rs.getString("has_comment")
                    });
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rows;
    }

    public static String[] getReviewDetailForTeacher(String teacherUsername, int feedbackId) {
        String query =
                "SELECT TOP 1 c.course_name, CONVERT(VARCHAR, f.created_at, 120) AS submitted_at, " +
                        "       ROUND((f.clarity_rating + f.difficulty_rating + f.fairness_rating + f.engagement_rating + f.workload_rating) / 5.0, 2) AS overall_rating, " +
                        "       COALESCE(f.tags, '') AS tags, COALESCE(f.comment, '') AS comment " +
                        "FROM feedback f " +
                        "JOIN student_enrollments se ON f.enrollment_id = se.id " +
                        "JOIN course_assignments ca ON se.assignment_id = ca.id " +
                        "JOIN courses c ON ca.course_id = c.course_code " +
                        "WHERE ca.teacher_username = ? AND f.id = ? ";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, teacherUsername);
            stmt.setInt(2, feedbackId);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new String[]{
                            rs.getString("course_name"),
                            rs.getString("submitted_at"),
                            rs.getString("overall_rating"),
                            rs.getString("tags"),
                            rs.getString("comment")
                    };
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}