/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.login;

import java.util.ArrayList;
import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "ListItemSer", urlPatterns = {"/ListItemSer"})
public class ListItemSer extends HttpServlet {

      private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<String> items = new ArrayList<>();
        items.add("Item 1");
        items.add("Item 2");
        items.add("Item 3");
        items.add("Item 4");
        items.add("Item 5");
        items.add("Item 6");
        items.add("Item 7");
        items.add("Item 8");
        items.add("Item 9");
        items.add("Item 10");
        items.add("Item 11");
        items.add("Item 12");
        items.add("Item 10");
        items.add("Item 11");
        items.add("Item 12");
        request.setAttribute("items", items);
        request.getRequestDispatcher("ListItems.jsp").forward(request, response);
    }
}
