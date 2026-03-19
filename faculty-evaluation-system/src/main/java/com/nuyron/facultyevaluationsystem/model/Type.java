package com.nuyron.facultyevaluationsystem.model;

public enum Type {
    LIKERT("Likert_Scale"),
    SLIDER("Slider_Scale"),
    BINARY("Binary"),
    TEXT("Text");

    private final String displayName;

    Type(String displayName) {
        this.displayName = displayName;
    }

    @Override
    public String toString() {
        return displayName;
    }
}
