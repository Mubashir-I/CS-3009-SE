package com.nuyron.facultyevaluationsystem.model;

import java.util.List;
import com.nuyron.facultyevaluationsystem.model.Type;

/**
 * Act as a base class to different types of questions.
 * This class provides the basic template of the question with common variable and methods
 * @author Mubashir-I
 * @version 1.0
 * @since 2026-3-17
 */

public abstract class Question {

    private String question_id;
    private String question_text;
    private String perf_factor;
    private Type question_type;

    public Question(String id, String text, String factor, Type type) {
        this.question_id = id;
        this.question_text = text;
        this.perf_factor = factor;
        this.question_type = type;
    }

    // Method(s) to be implemented by child classes
    public abstract double calculateScore(Object input);

    // Getter(s)
    public String getQuestionId() { return question_id; }
    public String getPerfFactor() { return perf_factor; }
    public String getQuestionText() { return question_text; }
    public String getQuestionType() { return question_type.toString(); }
}
