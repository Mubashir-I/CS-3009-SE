package com.nuyron.facultyevaluationsystem.models;

public class CourseAssignment {
    private int assignmentid;
    private String courseCode;
    private String courseName;
    private String facultyId;
    private String facultyName;

    public CourseAssignment(int id, String courseCode, String courseName, String facultyId, String facultyName) {
        this.assignmentid = id;
        this.courseCode = courseCode;
        this.courseName = courseName;
        this.facultyId = facultyId;
        this.facultyName = facultyName;
    }

    public int getAssignmentid() { return assignmentid; }
    public String getCourseCode() { return courseCode; }
    public String getCourseName() { return courseName; }
    public String getFacultyId() { return facultyId; }
    public String getFacultyName() { return facultyName; }
}
