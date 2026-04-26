package com.nuyron.facultyevaluationsystem.models;

/**
 * Represents a scheduled (pushed) feedback form — one questionnaire assigned
 * to a specific department / course for a given semester + date window.
 *
 * @author Mubashir-I
 * @version 2.0
 * @since 2026-04-24
 */
public class FormSchedule {

    private final int scheduleid;
    private final int questionnaireId;
    private final String questionnaireName;
    private final String department;
    private final String courseCode;
    private final String semester;
    private final String startDate;
    private final String endDate;
    private final String status;
    private final String createdAt;

    public FormSchedule(int id, int questionnaireId, String questionnaireName,
                        String department, String courseCode, String semester,
                        String startDate, String endDate, String status, String createdAt) {
        this.scheduleid = id;
        this.questionnaireId   = questionnaireId;
        this.questionnaireName = questionnaireName;
        this.department        = department;
        this.courseCode        = courseCode;
        this.semester          = semester == null ? "" : semester;
        this.startDate         = startDate;
        this.endDate           = endDate;
        this.status            = status;
        this.createdAt         = createdAt == null ? "" : createdAt;
    }

    public int getScheduleid()                { return scheduleid; }
    public int    getQuestionnaireId()   { return questionnaireId; }
    public String getQuestionnaireName() { return questionnaireName; }
    public String getDepartment()        { return department; }
    public String getCourseCode()        { return courseCode; }
    public String getSemester()          { return semester; }
    public String getStartDate()         { return startDate; }
    public String getEndDate()           { return endDate; }
    public String getStatus()            { return status; }
    public String getCreatedAt()         { return createdAt; }
}
