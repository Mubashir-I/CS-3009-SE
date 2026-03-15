package com.nuyron.facultyevaluationsystem;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DatabaseConnection {
    private static Connection connection;

    public static Connection getConnection() throws SQLException {
        if (connection == null || connection.isClosed()) {
            try (InputStream input = DatabaseConnection.class.getClassLoader().getResourceAsStream("config.properties")) {
                Properties prop = new Properties();

                if (input == null) {
                    throw new RuntimeException("Sorry, unable to find config.properties");
                }

                prop.load(input);

                Class.forName(prop.getProperty("db.driver"));

                connection = DriverManager.getConnection(
                        prop.getProperty("db.url"),
                        prop.getProperty("db.user"),
                        prop.getProperty("db.password")
                );
            } catch (Exception e) {
                e.printStackTrace();
                throw new SQLException("Connection failed!");
            }
        }
        return connection;
    }
}