package com.nuyron.facultyevaluationsystem.model;


/**
 * This class extends Question class and allows to create text questions.
 * @author Mubashir-I
 * @version 1.0
 * @since 2026-3-17
 */

public class TextQuestion extends Question {
    private String message;
    public TextQuestion(String id, String text, String factor, String message) {
        super(id, text, factor, Type.TEXT);
        this.message = message;
    }

    @Override
    public double calculateScore(Object input) {
        return 1.0;
    }
}
