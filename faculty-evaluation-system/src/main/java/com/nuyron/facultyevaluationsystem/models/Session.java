package com.nuyron.facultyevaluationsystem.models;

public class Session {
    public static User    currentUser;
    public static Integer selectedEnrollmentId;
    public static Integer selectedFeedbackId;
    public static FormSchedule selectedFormSchedule;
    public static String  hodDepartment;
    public static Integer sessionLogId;
    public static long    loginTimeMillis;

    public static User getLoggedInUser() {
        return currentUser;
    }

    public static void clear() {
        currentUser = null;
        selectedEnrollmentId = null;
        selectedFeedbackId = null;
        selectedFormSchedule = null;
        hodDepartment = null;
    }
}