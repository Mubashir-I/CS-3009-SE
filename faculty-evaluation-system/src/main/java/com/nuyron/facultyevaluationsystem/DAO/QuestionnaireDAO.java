package com.nuyron.facultyevaluationsystem.DAO;

import com.nuyron.facultyevaluationsystem.DatabaseConnection;
import com.nuyron.facultyevaluationsystem.models.QuestionRecord;
import com.nuyron.facultyevaluationsystem.models.QuestionnaireRecord;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class QuestionnaireDAO {

    public static boolean saveQuestionnaire(String name, String description,
                                        List<Integer> questionIds) {
        String insertQnaire = "INSERT INTO questionnaires (name, description) VALUES (?, ?)";
        String insertLink   = "INSERT INTO questionnaire_questions " +
                              "(questionnaire_id, question_id, display_order) VALUES (?, ?, ?)";

        Connection conn = null;
        try {
            conn = DatabaseConnection.getConnection();
            conn.setAutoCommit(false);

            int newId;
            try (PreparedStatement stmt = conn.prepareStatement(
                    insertQnaire, Statement.RETURN_GENERATED_KEYS)) {
                stmt.setString(1, name.trim());
                stmt.setString(2, description == null ? "" : description.trim());
                stmt.executeUpdate();
                try (ResultSet keys = stmt.getGeneratedKeys()) {
                    if (!keys.next()) { conn.rollback(); return false; }
                    newId = keys.getInt(1);
                }
            }

            try (PreparedStatement stmt = conn.prepareStatement(insertLink)) {
                for (int order = 0; order < questionIds.size(); order++) {
                    stmt.setInt(1, newId);
                    stmt.setInt(2, questionIds.get(order));
                    stmt.setInt(3, order);
                    stmt.addBatch();
                }
                stmt.executeBatch();
            }

            conn.commit();
            return newId > 0 ? true : false;

        } catch (SQLException e) {
            e.printStackTrace();
            if (conn != null) {
                try { conn.rollback(); } catch (SQLException ex) { ex.printStackTrace(); }
            }
        } finally {
            if (conn != null) {
                try { conn.setAutoCommit(true); } catch (SQLException ex) { ex.printStackTrace(); }
            }
        }
        return false;
    }

    public static List<QuestionnaireRecord> getAllQuestionnaires() {
        List<QuestionnaireRecord> list = new ArrayList<>();
        String sql = "SELECT q.id, q.name, q.description, q.created_at, " +
                     "COUNT(qq.question_id) AS question_count " +
                     "FROM questionnaires q " +
                     "LEFT JOIN questionnaire_questions qq ON qq.questionnaire_id = q.id " +
                     "GROUP BY q.id, q.name, q.description, q.created_at " +
                     "ORDER BY q.id";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                list.add(new QuestionnaireRecord(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getInt("question_count"),
                        rs.getString("created_at")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static List<QuestionRecord> getQuestionsForQuestionnaire(int questionnaireId) {
        List<QuestionRecord> list = new ArrayList<>();
        String sql = "SELECT q.id, q.question_text, q.question_type, q.perf_factor, q.type_metadata " +
                     "FROM questions q " +
                     "JOIN questionnaire_questions qq ON qq.question_id = q.id " +
                     "WHERE qq.questionnaire_id = ? " +
                     "ORDER BY qq.display_order";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, questionnaireId);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    list.add(new QuestionRecord(
                            rs.getInt("id"),
                            rs.getString("question_text"),
                            rs.getString("question_type"),
                            rs.getString("perf_factor"),
                            rs.getString("type_metadata")
                    ));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static List<String[]> getAllQuestionnaireNames() {
        List<String[]> list = new ArrayList<>();
        String sql = "SELECT id, name FROM questionnaires ORDER BY name";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                list.add(new String[]{
                        String.valueOf(rs.getInt("id")),
                        rs.getString("name")
                });
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
