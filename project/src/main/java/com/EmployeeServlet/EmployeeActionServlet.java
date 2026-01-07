package com.EmployeeServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/EmployeeActionServlet")
public class EmployeeActionServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String action = request.getParameter("action");

        switch (action) {
            case "update":
                response.sendRedirect("FetchEmployeeServlet?id=" + id);
                break;

            case "delete":
                response.sendRedirect("DeleteEmployeeServlet?id=" + id);
                break;

            case "view":
                response.sendRedirect("ViewEmployeeServlet?id=" + id);
                break;

            default:
                response.sendRedirect("index.jsp");
        }
    }
}
