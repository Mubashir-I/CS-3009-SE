package com.nuyron.facultyevaluationsystem.models;

public class Course {
    int courseid;
    String courseCode, courseName, dept;

    public Course(int id, String courseCode, String courseName, String dept) {
        this.courseid = id;
        this.courseCode = courseCode;
        this.courseName = courseName;
        this.dept = dept;
    }

    public int getCourseId() {
        return courseid;
    }

    public String getCourseCode() {
        return courseCode;
    }

    public String getCourseName() {
        return courseName;
    }

    public String getDept() {
        return dept;
    }
}
