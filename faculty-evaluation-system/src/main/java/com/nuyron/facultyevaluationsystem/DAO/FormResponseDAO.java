package com.nuyron.facultyevaluationsystem.DAO;

import com.nuyron.facultyevaluationsystem.DatabaseConnection;

import java.sql.*;
import java.util.List;

public class FormResponseDAO {

    public static class ResponseAnswer {
        public int questionId;
        public String questionText;
        public String questionType;
        public String perfFactor;
        public String answerValue;
        public Double numericScore;

        public ResponseAnswer(int questionId, String questionText, String questionType,
                              String perfFactor, String answerValue, Double numericScore) {
            this.questionId  = questionId;
            this.questionText = questionText;
            this.questionType = questionType;
            this.perfFactor  = perfFactor;
            this.answerValue = answerValue;
            this.numericScore = numericScore;
        }
    }

    public static boolean saveResponse(int scheduleId, String studentUsername,
                                       String department, String courseCode,
                                       int questionnaireId, String questionnaireName,
                                       List<ResponseAnswer> answers) {

        String teacherUsername = resolveTeacher(studentUsername, courseCode);

        String sqlResponse = "INSERT INTO form_responses " +
                "(schedule_id, student_username, department, course_code, " +
                " teacher_username, questionnaire_id, questionnaire_name) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?)";

        String sqlAnswer = "INSERT INTO response_answers " +
                "(response_id, question_id, question_text, question_type, " +
                " perf_factor, answer_value, numeric_score) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DatabaseConnection.getConnection()) {
            conn.setAutoCommit(false);

            try (PreparedStatement stmtResp =
                         conn.prepareStatement(sqlResponse, Statement.RETURN_GENERATED_KEYS)) {

                stmtResp.setInt(1, scheduleId);
                stmtResp.setString(2, studentUsername);
                stmtResp.setString(3, department);
                stmtResp.setString(4, courseCode);
                stmtResp.setString(5, teacherUsername);
                stmtResp.setInt(6, questionnaireId);
                stmtResp.setString(7, questionnaireName);

                stmtResp.executeUpdate();

                ResultSet rs = stmtResp.getGeneratedKeys();
                int responseId = -1;
                if (rs.next()) {
                    responseId = rs.getInt(1);
                } else {
                    conn.rollback();
                    return false;
                }

                try (PreparedStatement stmtAns = conn.prepareStatement(sqlAnswer)) {
                    for (ResponseAnswer a : answers) {
                        stmtAns.setInt(1, responseId);
                        stmtAns.setInt(2, a.questionId);
                        stmtAns.setString(3, a.questionText);
                        stmtAns.setString(4, a.questionType);
                        stmtAns.setString(5, a.perfFactor);
                        stmtAns.setString(6, a.answerValue);
                        if (a.numericScore == null) {
                            stmtAns.setNull(7, Types.FLOAT);
                        } else {
                            stmtAns.setDouble(7, a.numericScore);
                        }
                        stmtAns.addBatch();
                    }
                    stmtAns.executeBatch();
                }

                conn.commit();
                return true;

            } catch (SQLException e) {
                conn.rollback();
                e.printStackTrace();
            } finally {
                conn.setAutoCommit(true);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    private static String resolveTeacher(String studentUsername, String courseCode) {
        String sql = "SELECT ca.teacher_username " +
                     "FROM student_enrollments se " +
                     "JOIN course_assignments ca ON se.assignment_id = ca.id " +
                     "WHERE se.student_username = ? AND ca.course_id = ?";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, studentUsername);
            stmt.setString(2, courseCode);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getString("teacher_username");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
