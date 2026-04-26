package com.nuyron.facultyevaluationsystem.models;

public class User {
    private int userid;
    private String name;
    private String username;
    private String password;
    private String role;

    public User(int id, String name, String username, String password, String role) {
        this.userid = id;
        this.name = name;
        this.username = username;
        this.password = password;
        this.role = role;
    }

    // Getters
    public int getUserid() { return userid; }
    public String getName() { return name; }
    public String getUsername() { return username; }
    public String getPassword() { return password; }
    public String getRole() { return role; }
}