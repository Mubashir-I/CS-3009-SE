package com.nuyron.facultyevaluationsystem.models;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class Faculty {
    private String name;
    private String loginID;
    private String dateCreated;

    public Faculty(String name, String loginID, Timestamp dateCreated) {
        this.name = name;
        this.loginID = loginID;
        if (dateCreated != null){
            SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
            this.dateCreated= formatter.format(dateCreated);
        }
        else{
            this.dateCreated = "N/A";
        }
    }

    public String getName() {
        return name;
    }

    public String getLoginID() {
        return loginID;
    }

    public String getDateCreated() {
        return dateCreated;
    }
}
