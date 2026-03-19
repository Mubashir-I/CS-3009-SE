package com.nuyron.facultyevaluationsystem.model;

import java.util.List;

/**
 * This class extends Question class to create Slider Scale question.
 * It allows to set the label of the slider and min max values for slider.
 * @author Mubashir-I
 * @version 1.0
 * @since 2026-3-17
 */

public class SliderQuestion extends Question{
    private String label;
    private int maxScale;
    private int minScale;
    private List<String> options;

    public SliderQuestion(String id, String text, String factor, String label, int maxScale, int minScale) {
        super(id, text, factor, Type.SLIDER);
        this.label = label;
        this.maxScale = maxScale;
        this.minScale = minScale;
    }

    @Override
    public double calculateScore(Object input) {
        return (double) input; // Input is already 0-100
    }
}
