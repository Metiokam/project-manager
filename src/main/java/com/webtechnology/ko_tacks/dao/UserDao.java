package com.webtechnology.ko_tacks.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {

    private String jdbcURL = "jdbc:mysql://localhost:3306/ko_tasks_db?useSSL=false&serverTimezone=UTC";
    private String jdbcUsername = "root";
    private String jdbcPassword = "ton_motdepasse";

    private static final String SELECT_USER_SQL = "SELECT password FROM users WHERE email = ?";

    public UserDao() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Charger driver JDBC qui est deja installe comme library
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    // Méthode pour vérifier l'existant de l'utiliasteur a l'aide de ces paraméttre
    
    public  boolean validate(String email, String password) {
    	
        boolean isValidUser = false;

        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_SQL)) {

            preparedStatement.setString(1, email);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                String storedPassword = rs.getString("password");
                
                // comparaison du mot de pass
                if (storedPassword.equals(password)) {
                    isValidUser = true;
                }
            }

        } catch (SQLException e) {
            printSQLException(e);
        }

        return isValidUser;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
