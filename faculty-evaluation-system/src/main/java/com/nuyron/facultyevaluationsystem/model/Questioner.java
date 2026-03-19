package com.nuyron.facultyevaluationsystem.model;

import java.util.List;

/**
 * This class serve as a template for a set of questions that can be added to the feedback form.
 * @author Mubashir-I
 * @version 1.0
 * @since 2026-3-18
 */

public class Questioner {
    private String questionare_id;
    private String questionare_name;
    private String questionare_description;
    private List<Question> questions;
    private int total_questions;

    public Questioner(String id, String name, String desc) {
        this.questionare_id = id;
        this.questionare_name = name;
        this.questionare_description = desc;
        this.total_questions = 0;
    }

    public void addQuestion(Question question) {
        this.questions.add(question);
        total_questions++;
    }

    public void removeQuestion(Question question) {
        if(this.questions.remove(question)) {
            total_questions--;
        }
    }

}
