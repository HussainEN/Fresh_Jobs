/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.jobportal;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.ResultSet;


@WebServlet("/Loginser")
public class Loginser extends HttpServlet {
   
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        // Database connection
        String jdbcURL = "jdbc:sqlite:‪C:\\SQLite\\Jobs.db";
        String sql = "SELECT * FROM Login WHERE username = ? AND password = ?";

        try (Connection connection = DriverManager.getConnection(jdbcURL);
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, username);
            statement.setString(2, password);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                // User exists, set a cookie
                Cookie loginCookie = new Cookie("user", username);
                loginCookie.setMaxAge(30 * 60); // Set cookie to expire in 30 minutes
                response.addCookie(loginCookie);
                response.sendRedirect("Welcome.jsp");
            } else {
                // User doesn't exist, redirect back to login page with error
                response.sendRedirect("Login.jsp?error=Invalid+username+or+password");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("index.html");
        }
    }
}