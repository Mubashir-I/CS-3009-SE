package com.nuyron.facultyevaluationsystem.models;

/**
 * Model class to save / load the question at the application layer before
 * it is written in database
 *
 * @author Mubashir-I
 * @version 1.0
 * @since 2026-04-24
 */
public class QuestionRecord {

    private final int questionid;
    private final String questionText;
    private final String questionType;
    private final String perfFactor;
    private final String typeMetadata;

    public QuestionRecord(int id, String questionText, String questionType,
                          String perfFactor, String typeMetadata) {
        this.questionid = id;
        this.questionText = questionText;
        this.questionType = questionType;
        this.perfFactor   = perfFactor;
        this.typeMetadata = typeMetadata == null ? "" : typeMetadata;
    }

    public int getQuestionId()           { return questionid; }
    public String getQuestionText() { return questionText; }
    public String getQuestionType() { return questionType; }
    public String getPerfFactor()   { return perfFactor; }
    public String getTypeMetadata() { return typeMetadata; }

    @Override
    public String toString() {
        return "[" + questionid + "] " + questionText;
    }
}
