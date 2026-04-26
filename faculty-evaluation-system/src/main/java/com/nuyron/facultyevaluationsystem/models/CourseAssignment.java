package com.nuyron.facultyevaluationsystem.model;

public class CourseAssignment {
    private int id;
    private String courseCode;
    private String courseName;
    private String facultyId;
    private String facultyName;

    public CourseAssignment(int id, String courseCode, String courseName, String facultyId, String facultyName) {
        this.id = id;
        this.courseCode = courseCode;
        this.courseName = courseName;
        this.facultyId = facultyId;
        this.facultyName = facultyName;
    }

    public int getId() { return id; }
    public String getCourseCode() { return courseCode; }
    public String getCourseName() { return courseName; }
    public String getFacultyId() { return facultyId; }
    public String getFacultyName() { return facultyName; }
}
