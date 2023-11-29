/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author chris
 */

import java.sql.*;
        
        
public class DBExample {
    
public static void main(String[] args) {
        
        String jdbcUrl = "jdbc:mysql://localhost:3306/Lec12_13";
//      String jdbcUrl = "jdbc:mysql:///Lec12_13";
        String username = "root";
        String password = "root";

        try (Connection connection = DriverManager.getConnection(jdbcUrl, username, password)) {
            // Insert a new customer
            insertCustomer(connection, 4, "Chris", "Mug", "chris.mug@email.com");

            // Retrieve and display customers
            System.out.println("List of Customers:");
            displayCustomers(connection);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static void insertCustomer(Connection connection, int id, String firstName, String lastName, String email)
            throws SQLException {
        String sql = "INSERT INTO Customers VALUES (?, ?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setInt(1, id);
            preparedStatement.setString(2, firstName);
            preparedStatement.setString(3, lastName);
            preparedStatement.setString(4, email);

            int rowsAffected = preparedStatement.executeUpdate();
            System.out.println(rowsAffected + " row(s) inserted.");
        }
    }

    private static void displayCustomers(Connection connection) throws SQLException {
        String sql = "SELECT * FROM Customers";
        try (Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {

            while (resultSet.next()) {
                int id = resultSet.getInt("CustomerID");
                String firstName = resultSet.getString("FirstName");
                String lastName = resultSet.getString("LastName");
                String email = resultSet.getString("Email");

                System.out.println("ID: " + id + ", Name: " + firstName + " " + lastName + ", Email: " + email);
            }
        }
    }
}