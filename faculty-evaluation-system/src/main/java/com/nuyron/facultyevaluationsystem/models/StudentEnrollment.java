package com.nuyron.facultyevaluationsystem.model;

public class StudentEnrollment {
    private int id;
    private String courseCode;
    private String studentId;
    private String studentName;

    public StudentEnrollment(int id, String courseCode, String studentId, String studentName) {
        this.id = id;
        this.courseCode = courseCode;
        this.studentId = studentId;
        this.studentName = studentName;
    }

    public int getId() { return id; }
    public String getCourseCode() { return courseCode; }
    public String getStudentId() { return studentId; }
    public String getStudentName() { return studentName; }
}
