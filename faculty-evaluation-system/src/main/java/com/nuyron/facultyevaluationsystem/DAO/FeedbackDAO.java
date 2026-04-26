package com.nuyron.facultyevaluationsystem.DAO;

import com.nuyron.facultyevaluationsystem.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class FeedbackDAO {
    private FeedbackDAO() {
    }

    public static boolean hasFeedbackForEnrollment(int enrollmentId) {
        String query = "SELECT TOP 1 1 FROM feedback WHERE enrollment_id = ?";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, enrollmentId);

            try (ResultSet rs = stmt.executeQuery()) {
                return rs.next();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean isEnrollmentOwnedByStudent(int enrollmentId, String studentUsername) {
        String query = "SELECT TOP 1 1 FROM student_enrollments WHERE id = ? AND student_username = ?";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, enrollmentId);
            stmt.setString(2, studentUsername);

            try (ResultSet rs = stmt.executeQuery()) {
                return rs.next();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean hasRecentFeedbackForSameTeacher(String studentUsername, int enrollmentId, int withinDays) {
        String query =
                "SELECT MAX(f.created_at) AS last_feedback_at " +
                "FROM feedback f " +
                "JOIN student_enrollments se ON f.enrollment_id = se.id " +
                "JOIN course_assignments ca ON se.assignment_id = ca.id " +
                "WHERE se.student_username = ? " +
                "  AND ca.teacher_username = (" +
                "      SELECT ca2.teacher_username " +
                "      FROM student_enrollments se2 " +
                "      JOIN course_assignments ca2 ON se2.assignment_id = ca2.id " +
                "      WHERE se2.id = ?" +
                "  )";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, studentUsername);
            stmt.setInt(2, enrollmentId);

            try (ResultSet rs = stmt.executeQuery()) {
                if (!rs.next()) {
                    return false;
                }

                Timestamp lastFeedbackAt = rs.getTimestamp("last_feedback_at");
                if (lastFeedbackAt == null) {
                    return false;
                }

                LocalDateTime threshold = LocalDateTime.now().minusDays(withinDays);
                return lastFeedbackAt.toLocalDateTime().isAfter(threshold);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return true;
        }
    }

    public static boolean addFeedback(
            int enrollmentId,
            int clarityRating,
            int difficultyRating,
            int fairnessRating,
            int engagementRating,
            int workloadRating,
            String tags,
            String comment
    ) {
        String query =
                "INSERT INTO feedback (enrollment_id, clarity_rating, difficulty_rating, fairness_rating, engagement_rating, workload_rating, tags, comment) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, enrollmentId);
            stmt.setInt(2, clarityRating);
            stmt.setInt(3, difficultyRating);
            stmt.setInt(4, fairnessRating);
            stmt.setInt(5, engagementRating);
            stmt.setInt(6, workloadRating);
            stmt.setString(7, (tags == null || tags.trim().isEmpty()) ? null : tags.trim());
            stmt.setString(8, (comment == null || comment.trim().isEmpty()) ? null : comment.trim());

            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static List<String[]> getFeedbackHistoryForStudent(String studentUsername) {
        List<String[]> rows = new ArrayList<>();

        String query =
                "SELECT u.name AS teacher_name, c.course_name, FORMAT(f.created_at, 'yyyy-MM-dd HH:mm') AS submitted_at " +
                "FROM feedback f " +
                "JOIN student_enrollments se ON f.enrollment_id = se.id " +
                "JOIN course_assignments ca ON se.assignment_id = ca.id " +
                "JOIN courses c ON ca.course_id = c.course_code " +
                "JOIN users u ON ca.teacher_username = u.username " +
                "WHERE se.student_username = ? " +
                "ORDER BY f.created_at DESC";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, studentUsername);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    rows.add(new String[] {
                            rs.getString("teacher_name"),
                            rs.getString("course_name"),
                            rs.getString("submitted_at")
                    });
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rows;
    }
}

