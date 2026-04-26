package com.nuyron.facultyevaluationsystem.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.nuyron.facultyevaluationsystem.DatabaseConnection;

public class TeacherDAO {

    public static boolean saveTeacher(int id, String name, String designation, int deptId) {
        String sql = "INSERT INTO Teachers (ID, Teacher_Name, Designation, DeptID) VALUES (?, ?, ?, ?)";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            if (conn == null) return false;

            pstmt.setInt(1, id);
            pstmt.setString(2, name);
            pstmt.setString(3, designation);
            pstmt.setInt(4, deptId);

            int rowsAffected = pstmt.executeUpdate();
            System.out.println("Teacher saved successfully!");
            return rowsAffected > 0;

        } catch (SQLException e) {
            System.err.println("Error saving teacher: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }
}
