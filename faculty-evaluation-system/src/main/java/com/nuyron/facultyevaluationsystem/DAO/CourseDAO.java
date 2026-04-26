package faculty_evaluation.DAO;

import faculty_evaluation.models.Course;
import faculty_evaluation.models.CourseAssignment;
import faculty_evaluation.models.StudentEnrollment;
import faculty_evaluation.models.Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CourseDAO {
    public static boolean addCourse(String courseID, String courseName, String dept){
        String query = "INSERT INTO courses(course_code, course_name, department) VALUES (?,?,?)";
        try(Connection conn = Database.getConnection();
            PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, courseID);
            stmt.setString(2, courseName);
            stmt.setString(3, dept);

            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static List<Course> getAllCourses() {
        List<Course> courseList = new ArrayList<>();
        String query = "SELECT id, course_code, course_name, department FROM courses";
        try(Connection conn = Database.getConnection();
            PreparedStatement stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery()){

            while(rs.next()){
                int id = rs.getInt("id");
                String code = rs.getString("course_code");
                String name = rs.getString("course_name");
                String department = rs.getString("department");

                courseList.add(new Course(id, code, name, department));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return courseList;
    }

    public static boolean assignTeacher(String courseCode, String facultyID){
        String query = "INSERT INTO course_assignments (course_id, teacher_username) VALUES (?, ?)";
        try(Connection conn = Database.getConnection();
            PreparedStatement stmt = conn.prepareStatement(query)){

            stmt.setString(1, courseCode);
            stmt.setString(2, facultyID);
            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static List<CourseAssignment> getAllAssignments() {
        List<CourseAssignment> list = new ArrayList<>();
        String query = "SELECT ca.id, ca.course_id as course_code, c.course_name, ca.teacher_username as faculty_id, u.name as faculty_name " +
                       "FROM course_assignments ca " +
                       "JOIN courses c ON ca.course_id = c.course_code " +
                       "JOIN users u ON ca.teacher_username = u.username";
        try(Connection conn = Database.getConnection();
            PreparedStatement stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery()){

            while(rs.next()){
                int id = rs.getInt("id");
                String code = rs.getString("course_code");
                String name = rs.getString("course_name");
                String facultyId = rs.getString("faculty_id");
                String facultyName = rs.getString("faculty_name");

                list.add(new CourseAssignment(id, code, name, facultyId, facultyName));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

    public static List<StudentEnrollment> getAllEnrollments() {
        List<StudentEnrollment> list = new ArrayList<>();
        String query = "SELECT se.id, ca.course_id as course_code, se.student_username as student_id, u.name as student_name " +
                       "FROM student_enrollments se " +
                       "JOIN course_assignments ca ON se.assignment_id = ca.id " +
                       "JOIN users u ON se.student_username = u.username";
        try(Connection conn = Database.getConnection();
            PreparedStatement stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery()){

            while(rs.next()){
                int id = rs.getInt("id");
                String code = rs.getString("course_code");
                String studentId = rs.getString("student_id");
                String studentName = rs.getString("student_name");

                list.add(new StudentEnrollment(id, code, studentId, studentName));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

    public static boolean enrollStudent(String courseCode, String studentId) {
        String query = "INSERT INTO student_enrollments (assignment_id, student_username) " +
                       "SELECT id, ? FROM course_assignments WHERE course_id = ?";
        try(Connection conn = Database.getConnection();
            PreparedStatement stmt = conn.prepareStatement(query)){

            stmt.setString(1, studentId);
            stmt.setString(2, courseCode);
            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static List<String[]> getEnrollableCourses() {
        List<String[]> list = new ArrayList<>();
        String query = "SELECT DISTINCT c.course_code, c.course_name " +
                       "FROM course_assignments ca " +
                       "JOIN courses c ON ca.course_id = c.course_code " +
                       "ORDER BY c.course_code";

        try (Connection conn = Database.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                list.add(new String[]{
                        rs.getString("course_code"),
                        rs.getString("course_name")
                });
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    public static List<String[]> getTeacherAssignmentsForCourse(String courseCode) {
        List<String[]> list = new ArrayList<>();
        String query = "SELECT ca.id AS assignment_id, ca.teacher_username, u.name AS teacher_name " +
                       "FROM course_assignments ca " +
                       "JOIN users u ON u.username = ca.teacher_username " +
                       "WHERE ca.course_id = ? " +
                       "ORDER BY u.name";

        try (Connection conn = Database.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, courseCode);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    list.add(new String[]{
                            String.valueOf(rs.getInt("assignment_id")),
                            rs.getString("teacher_username"),
                            rs.getString("teacher_name")
                    });
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    public static boolean enrollStudentByAssignment(int assignmentId, String selectedCourseCode, String studentId) {
        String query = "INSERT INTO student_enrollments (assignment_id, student_username) " +
                "SELECT ?, ? " +
                "WHERE EXISTS (SELECT 1 FROM users WHERE username = ? AND role = 'STUDENT') " +
                "  AND EXISTS (SELECT 1 FROM course_assignments WHERE id = ? AND course_id = ?) " +
                "  AND NOT EXISTS ( " +
                "      SELECT 1 " +
                "      FROM student_enrollments se " +
                "      JOIN course_assignments existing_ca ON existing_ca.id = se.assignment_id " +
                "      WHERE se.student_username = ? AND existing_ca.course_id = ? " +
                "  )";

        try (Connection conn = Database.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, assignmentId);
            stmt.setString(2, studentId);
            stmt.setString(3, studentId);
            stmt.setInt(4, assignmentId);
            stmt.setString(5, selectedCourseCode);
            stmt.setString(6, studentId);
            stmt.setString(7, selectedCourseCode);

            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static List<CourseAssignment> getAssignmentsForStudent(String studentUsername) {
        List<CourseAssignment> list = new ArrayList<>();
        String query = "SELECT se.id, ca.course_id as course_code, c.course_name, ca.teacher_username as faculty_id, u.name as faculty_name " +
                       "FROM student_enrollments se " +
                       "JOIN course_assignments ca ON se.assignment_id = ca.id " +
                       "JOIN courses c ON ca.course_id = c.course_code " +
                       "JOIN users u ON ca.teacher_username = u.username " +
                       "WHERE se.student_username = ? " +
                       "ORDER BY c.course_code, u.name";
        try (Connection conn = Database.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, studentUsername);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    list.add(new CourseAssignment(
                            rs.getInt("id"),
                            rs.getString("course_code"),
                            rs.getString("course_name"),
                            rs.getString("faculty_id"),
                            rs.getString("faculty_name")
                    ));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
