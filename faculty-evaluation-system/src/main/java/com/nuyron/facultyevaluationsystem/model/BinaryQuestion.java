package com.nuyron.facultyevaluationsystem.model;


/**
 * This class extends Question class and allows to create binary (yes/no) questions.
 * @author Mubashir-I
 * @version 1.0
 * @since 2026-3-17
 */

public class BinaryQuestion extends Question {
    private String option1;
    private String option2;
    public BinaryQuestion(String id, String text, String factor,  String option1, String option2) {
        super(id, text, factor, Type.BINARY);
        this.option1 = option1;
        this.option2 = option2;
    }

    @Override
    public double calculateScore(Object input) {
        boolean val = (boolean) input;
        return val ? 100.0 : 0.0;
    }
}
