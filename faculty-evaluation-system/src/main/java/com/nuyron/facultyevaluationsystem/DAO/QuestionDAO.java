package com.nuyron.facultyevaluationsystem.DAO;

import com.nuyron.facultyevaluationsystem.DatabaseConnection;
import com.nuyron.facultyevaluationsystem.models.QuestionRecord;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class QuestionDAO {

    public static boolean saveQuestion(String questionText, String questionType,
                                   String perfFactor, String typeMetadata) {
        String sql = "INSERT INTO questions (question_text, question_type, perf_factor, type_metadata) " +
                     "VALUES (?, ?, ?, ?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

            stmt.setString(1, questionText.trim());
            stmt.setString(2, questionType.trim().toUpperCase());
            stmt.setString(3, perfFactor.trim());
            stmt.setString(4, typeMetadata == null ? "" : typeMetadata.trim());

            int rows = stmt.executeUpdate();
            if (rows > 0) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static List<QuestionRecord> getAllQuestions() {
        List<QuestionRecord> list = new ArrayList<>();
        String sql = "SELECT id, question_text, question_type, perf_factor, type_metadata " +
                     "FROM questions ORDER BY id";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                list.add(new QuestionRecord(
                        rs.getInt("id"),
                        rs.getString("question_text"),
                        rs.getString("question_type"),
                        rs.getString("perf_factor"),
                        rs.getString("type_metadata")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static QuestionRecord getQuestionById(int id) {
        String sql = "SELECT id, question_text, question_type, perf_factor, type_metadata " +
                     "FROM questions WHERE id = ?";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new QuestionRecord(
                            rs.getInt("id"),
                            rs.getString("question_text"),
                            rs.getString("question_type"),
                            rs.getString("perf_factor"),
                            rs.getString("type_metadata")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static String buildLikertMetadata(int maxScale, String options) {
        return "maxScale=" + maxScale + "|options=" + options;
    }

    public static String buildSliderMetadata(String label, int min, int max) {
        return "label=" + label + "|min=" + min + "|max=" + max;
    }

    public static String buildTextMetadata(String message) {
        return "message=" + (message == null ? "" : message);
    }

    public static String buildBinaryMetadata(String option1, String option2) {
        return "option1=" + option1 + "|option2=" + option2;
    }

    public static List<String[]> parseMetadata(String metadata) {
        List<String[]> result = new ArrayList<>();
        if (metadata == null || metadata.isEmpty()) return result;
        for (String pair : metadata.split("\\|")) {
            int eq = pair.indexOf('=');
            if (eq > 0) {
                result.add(new String[]{pair.substring(0, eq), pair.substring(eq + 1)});
            }
        }
        return result;
    }
}
