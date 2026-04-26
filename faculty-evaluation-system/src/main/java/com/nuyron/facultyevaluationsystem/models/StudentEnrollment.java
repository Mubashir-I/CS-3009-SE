package com.nuyron.facultyevaluationsystem.models;

public class StudentEnrollment {
    private int enrollmentid;
    private String courseCode;
    private String studentId;
    private String studentName;

    public StudentEnrollment(int id, String courseCode, String studentId, String studentName) {
        this.enrollmentid = id;
        this.courseCode = courseCode;
        this.studentId = studentId;
        this.studentName = studentName;
    }

    public int getEnrollmentid() { return enrollmentid; }
    public String getCourseCode() { return courseCode; }
    public String getStudentId() { return studentId; }
    public String getStudentName() { return studentName; }
}
