package faculty_evaluation.DAO;

import faculty_evaluation.models.Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AdminReportsDAO {
    private AdminReportsDAO() {
    }

    public static List<String[]> getTeacherOptions() {
        List<String[]> rows = new ArrayList<>();

        String query = "SELECT username, name FROM users WHERE role = 'TEACHER' ORDER BY name";

        try (Connection conn = Database.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                rows.add(new String[]{
                        rs.getString("name"),
                        rs.getString("username")
                });
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rows;
    }

    public static String[] getTeacherSummary(String teacherUsername) {
        String query =
                "SELECT TOP 1 u.name AS teacher_name, " +
                "       COUNT(f.id) AS feedback_count, " +
                "       COALESCE(ROUND(AVG(f.clarity_rating), 2), 0) AS clarity_avg, " +
                "       COALESCE(ROUND(AVG(f.difficulty_rating), 2), 0) AS difficulty_avg, " +
                "       COALESCE(ROUND(AVG(f.fairness_rating), 2), 0) AS fairness_avg, " +
                "       COALESCE(ROUND(AVG(f.engagement_rating), 2), 0) AS engagement_avg, " +
                "       COALESCE(ROUND(AVG(f.workload_rating), 2), 0) AS workload_avg, " +
                "       COALESCE(ROUND(AVG((COALESCE(f.clarity_rating, 0) + COALESCE(f.difficulty_rating, 0) + COALESCE(f.fairness_rating, 0) + COALESCE(f.engagement_rating, 0) + COALESCE(f.workload_rating, 0)) / 5.0), 2), 0) AS overall_avg " +
                "FROM users u " +
                "LEFT JOIN course_assignments ca ON ca.teacher_username = u.username " +
                "LEFT JOIN student_enrollments se ON se.assignment_id = ca.id " +
                "LEFT JOIN feedback f ON f.enrollment_id = se.id " +
                "WHERE u.username = ? " +
                "GROUP BY u.username, u.name ";

        try (Connection conn = Database.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, teacherUsername);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new String[]{
                            rs.getString("teacher_name"),
                            rs.getString("feedback_count"),
                            rs.getString("clarity_avg"),
                            rs.getString("difficulty_avg"),
                            rs.getString("fairness_avg"),
                            rs.getString("engagement_avg"),
                            rs.getString("workload_avg"),
                            rs.getString("overall_avg")
                    };
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public static List<String[]> getTeacherRatings(String teacherUsername) {
        List<String[]> rows = new ArrayList<>();

        String query =
                "SELECT c.course_name, FORMAT(f.created_at, 'yyyy-MM-dd HH:mm') AS submitted_at, " +
                "       COALESCE(f.clarity_rating, 0) AS clarity_rating, " +
                "       COALESCE(f.difficulty_rating, 0) AS difficulty_rating, " +
                "       COALESCE(f.fairness_rating, 0) AS fairness_rating, " +
                "       COALESCE(f.engagement_rating, 0) AS engagement_rating, " +
                "       COALESCE(f.workload_rating, 0) AS workload_rating, " +
                "       COALESCE(ROUND((COALESCE(f.clarity_rating, 0) + COALESCE(f.difficulty_rating, 0) + COALESCE(f.fairness_rating, 0) + COALESCE(f.engagement_rating, 0) + COALESCE(f.workload_rating, 0)) / 5.0, 2), 0) AS overall_rating " +
                "FROM feedback f " +
                "JOIN student_enrollments se ON f.enrollment_id = se.id " +
                "JOIN course_assignments ca ON se.assignment_id = ca.id " +
                "JOIN courses c ON ca.course_id = c.course_code " +
                "WHERE ca.teacher_username = ? " +
                "ORDER BY f.created_at DESC";

        try (Connection conn = Database.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, teacherUsername);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    rows.add(new String[]{
                            rs.getString("course_name"),
                            rs.getString("submitted_at"),
                            rs.getString("clarity_rating"),
                            rs.getString("difficulty_rating"),
                            rs.getString("fairness_rating"),
                            rs.getString("engagement_rating"),
                            rs.getString("workload_rating"),
                            rs.getString("overall_rating")
                    });
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rows;
    }
}
