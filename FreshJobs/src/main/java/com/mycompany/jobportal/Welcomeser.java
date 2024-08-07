/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.jobportal;

import java.io.PrintWriter;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class Welcomeser
 * Handles welcome page functionality and user session validation.
 * 
 * Author: Admin
 */
@WebServlet(name = "Welcomeser", urlPatterns = {"/Welcomeser"})
public class Welcomeser extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Handles the HTTP GET request.
     * 
     * @param request  The HttpServletRequest object that contains the request the client has made of the servlet.
     * @param response The HttpServletResponse object that contains the response the servlet sends to the client.
     * @throws ServletException If the request for the GET could not be handled.
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request.
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the existing session, do not create a new one if it doesn't exist
        HttpSession session = request.getSession(false);

        if (session != null && session.getAttribute("username") != null) {
            // User is logged in, retrieve username from session
            String username = (String) session.getAttribute("username");
            
            // Set the response content type to HTML
            response.setContentType("text/html");
            
            // Write the response
            try (PrintWriter out = response.getWriter()) {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Welcome Page</title>");
                out.println("<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css'>");
                out.println("</head>");
                out.println("<body>");
                out.println("<div class='container mt-5'>");
                out.println("<h1>Welcome, " + username + "!</h1>");
                out.println("<a href='LogoutServlet' class='btn btn-primary'>Logout</a>");
                out.println("</div>");
                out.println("</body>");
                out.println("</html>");
            }
        } else {
            // User is not logged in, redirect to login page
            response.sendRedirect("Login.jsp");
        }
    }
}
