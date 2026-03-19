package com.nuyron.facultyevaluationsystem.model;

import java.util.ArrayList;
import java.util.List;

/**
 * This class extends Question class to create Likert Scale of variable degree.
 * @author Mubashir-I
 * @version 1.0
 * @since 2026-3-17
 */

public class LikertQuestion extends Question {
    private int maxScale;
    private List<String> options;

    public LikertQuestion(String id, String text, String factor, int maxScale, List<String> options) {
        super(id, text, factor, Type.LIKERT);
        this.maxScale = maxScale;
        this.options = options;
    }

    public List<String> getOptions() {
        return options;
    }

    @Override
    public double calculateScore(Object input) {
        int val = (int) input;
        return (val / (double) maxScale) * 100;
    }
}
