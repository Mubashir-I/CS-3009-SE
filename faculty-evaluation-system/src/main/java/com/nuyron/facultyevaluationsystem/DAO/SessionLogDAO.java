package com.nuyron.facultyevaluationsystem.DAO;

import com.nuyron.facultyevaluationsystem.DatabaseConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SessionLogDAO {

    private SessionLogDAO() {}

    public static int logLogin(String username, String role) {
        String sql = "INSERT INTO session_logs (username, role, login_at) VALUES (?, ?, GETDATE())";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, username);
            stmt.setString(2, role);
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) return rs.getInt(1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }

    public static void logLogout(int sessionLogId) {
        if (sessionLogId <= 0) return;
        String sql = "UPDATE session_logs " +
                     "SET logout_at = GETDATE(), " +
                     "    duration_seconds = DATEDIFF(SECOND, login_at, GETDATE()) " +
                     "WHERE id = ?";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, sessionLogId);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static List<String[]> getAllLogs() {
        List<String[]> list = new ArrayList<>();
        String sql = "SELECT id, username, role, " +
                     "FORMAT(login_at,'yyyy-MM-dd HH:mm:ss') AS login_at, " +
                     "ISNULL(FORMAT(logout_at,'yyyy-MM-dd HH:mm:ss'), 'Active') AS logout_at, " +
                     "CASE WHEN duration_seconds IS NULL THEN 'Active' " +
                     "     WHEN duration_seconds < 60 THEN CAST(duration_seconds AS NVARCHAR) + 's' " +
                     "     WHEN duration_seconds < 3600 THEN CAST(duration_seconds/60 AS NVARCHAR) + 'm ' + CAST(duration_seconds%60 AS NVARCHAR) + 's' " +
                     "     ELSE CAST(duration_seconds/3600 AS NVARCHAR) + 'h ' + CAST((duration_seconds%3600)/60 AS NVARCHAR) + 'm' END AS duration " +
                     "FROM session_logs " +
                     "ORDER BY id DESC";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                list.add(new String[]{
                        rs.getString("id"),
                        rs.getString("username"),
                        rs.getString("role"),
                        rs.getString("login_at"),
                        rs.getString("logout_at"),
                        rs.getString("duration")
                });
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
