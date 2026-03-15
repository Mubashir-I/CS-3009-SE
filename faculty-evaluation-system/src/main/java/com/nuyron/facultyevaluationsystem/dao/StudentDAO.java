package com.nuyron.facultyevaluationsystem.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.nuyron.facultyevaluationsystem.DatabaseConnection;

public class StudentDAO {
    public static boolean saveStudent(String rollNo, String name, String batch, int deptId) {
        String sql = "INSERT INTO Students (Roll_No, Student_Name, Student_Batch, DeptID) VALUES (?, ?, ?, ?)";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            if (conn == null) return false;

            pstmt.setString(1, rollNo);
            pstmt.setString(2, name);
            pstmt.setString(3, batch);
            pstmt.setInt(4, deptId);

            int rowsAffected = pstmt.executeUpdate();
            System.out.println("Student saved successfully!");
            return rowsAffected > 0;

        } catch (SQLException e) {
            System.err.println("Error saving student: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }
}
