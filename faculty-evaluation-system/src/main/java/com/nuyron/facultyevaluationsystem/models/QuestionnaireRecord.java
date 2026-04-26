package com.nuyron.facultyevaluationsystem.models;

/**
 * Represents the metadata of one questionnaire / form used for laying out the model
 * for loading questionnaire data from the database for viewing
 *
 * @author Mubashir-I
 * @version 1.0
 * @since 2026-04-24
 */

public class QuestionnaireRecord {

    private final int qnaireid;
    private final String name;
    private final String description;
    private final int    questionCount;
    private final String createdAt;

    public QuestionnaireRecord(int id, String name, String description,
                               int questionCount, String createdAt) {
        this.qnaireid = id;
        this.name          = name;
        this.description   = description == null ? "" : description;
        this.questionCount = questionCount;
        this.createdAt     = createdAt == null ? "" : createdAt;
    }

    public int getQnaireid()            { return qnaireid; }
    public String getName()          { return name; }
    public String getDescription()   { return description; }
    public int    getQuestionCount() { return questionCount; }
    public String getCreatedAt()     { return createdAt; }

    @Override
    public String toString() { return name; }
}
