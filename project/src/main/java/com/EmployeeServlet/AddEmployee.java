package com.EmployeeServlet;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddEmployee")
public class AddEmployee extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Read form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String designation = request.getParameter("designation");
        String doj = request.getParameter("doj");
        String salary = request.getParameter("salary");

        Connection con = null;
        PreparedStatement ps = null;

        try {
            // 2. Load JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 3. Create Connection
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/ems_db",
                    "root",
                    "Admin123"   // change this
            );

            // 4. SQL Insert Query
            String sql = "INSERT INTO employee (name, email, designation, doj, salary) VALUES (?, ?, ?, ?, ?)";
            ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, designation);
            ps.setDate(4, java.sql.Date.valueOf(doj));
            ps.setDouble(5, Double.parseDouble(salary));

            // 5. Execute
            ps.executeUpdate();

            // 6. Redirect on success
            response.sendRedirect("index.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error while adding employee: " + e.getMessage());
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
