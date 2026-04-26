package com.nuyron.facultyevaluationsystem.model;

public class Session {
    public static User currentUser;
    public static Integer selectedEnrollmentId;
    public static Integer selectedFeedbackId;

    public static void clear() {
        currentUser = null;
        selectedEnrollmentId = null;
        selectedFeedbackId = null;
    }
}