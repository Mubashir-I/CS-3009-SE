package com.nuyron.facultyevaluationsystem.model;

import java.util.Date;

/**
 * This class serves as a foundation to the feedback form.
 * Allows to set the start and end date of form live duration.
 * Allows to set the participants of the feedback.
 * @author Mubashir-I
 * @version 1.0
 * @since 2026-3-17
 */

public class FeedbackForm {
    private String evaluation_id;
    private String evaluation_name;
    private Date start_date;
    private Date end_date;
    private String department_id;
    private String course_id;
    private String semester_id;
    private Questioner questioner;

    public FeedbackForm() {

    }
}
