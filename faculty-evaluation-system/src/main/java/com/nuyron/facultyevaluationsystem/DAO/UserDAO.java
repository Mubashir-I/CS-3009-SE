package com.nuyron.facultyevaluationsystem.DAO;

import com.nuyron.facultyevaluationsystem.DatabaseConnection;
import com.nuyron.facultyevaluationsystem.models.Student;
import com.nuyron.facultyevaluationsystem.models.Faculty;
import com.nuyron.facultyevaluationsystem.models.Hod;
import com.nuyron.facultyevaluationsystem.models.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    public static User login(String username, String password) {
        User user = null;
        String query = "SELECT * FROM users WHERE username=? AND password=?";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                user = new User(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("role")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    public static String getHodDepartment(String username) {
        String query = "SELECT department FROM users WHERE username = ?";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, username);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getString("department");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static boolean addUserDB(String name, String username, String password,
                                    String role, String department) {
        String query = "INSERT INTO users (name, username, password, role, department) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, name);
            stmt.setString(2, username);
            stmt.setString(3, password);
            stmt.setString(4, role);
            stmt.setString(5, (department == null || department.isBlank()) ? null : department.trim());
            int newRows = stmt.executeUpdate();
            return newRows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static List<Student> getAllStudents() {
        List<Student> studentsList = new ArrayList<>();
        String query = "SELECT name, username, created_at FROM users WHERE role = 'STUDENT'";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                studentsList.add(new Student(
                        rs.getString("name"),
                        rs.getString("username"),
                        rs.getTimestamp("created_at")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return studentsList;
    }

    public static List<Faculty> getAllFaculty() {
        List<Faculty> facultyList = new ArrayList<>();
        String query = "SELECT name, username, created_at FROM users WHERE role = 'TEACHER'";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                facultyList.add(new Faculty(
                        rs.getString("name"),
                        rs.getString("username"),
                        rs.getTimestamp("created_at")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facultyList;
    }

    public static List<Hod> getAllHod() {
        List<Hod> hodList = new ArrayList<>();
        String query = "SELECT name, username, created_at FROM users WHERE role = 'HOD'";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                hodList.add(new Hod(
                        rs.getString("name"),
                        rs.getString("username"),
                        rs.getTimestamp("created_at")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return hodList;
    }

    public static boolean updateUser(String currentUsername, String newName, String newUsername) {
        StringBuilder queryBuilder = new StringBuilder("UPDATE users SET ");
        List<String> updates = new ArrayList<>();
        if (newName != null && !newName.trim().isEmpty()) {
            updates.add("name = ?");
        }
        if (newUsername != null && !newUsername.trim().isEmpty()) {
            updates.add("username = ?");
        }
        if (updates.isEmpty()) {
            return false;
        }
        queryBuilder.append(String.join(", ", updates));
        queryBuilder.append(" WHERE username = ?");
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(queryBuilder.toString())) {
            int paramIndex = 1;
            if (newName != null && !newName.trim().isEmpty()) {
                stmt.setString(paramIndex++, newName.trim());
            }
            if (newUsername != null && !newUsername.trim().isEmpty()) {
                stmt.setString(paramIndex++, newUsername.trim());
            }
            stmt.setString(paramIndex, currentUsername);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
