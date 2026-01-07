package com.EmployeeServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.DBConnection.DBConnection;
@WebServlet("/UpdateEmployeeServlet")
public class UpdateEmployeeServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String designation = request.getParameter("designation");
        String doj = request.getParameter("doj");
        double salary = Double.parseDouble(request.getParameter("salary"));

        try {
            Connection con = DBConnection.getConnection();

            String sql = "UPDATE employee SET name=?, email=?, designation=?, doj=?, salary=? WHERE id=?";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, designation);
            ps.setDate(4, java.sql.Date.valueOf(doj));
            ps.setDouble(5, salary);
            ps.setInt(6, id);

            ps.executeUpdate();

            response.sendRedirect("index.jsp?success=Employee updated successfully");

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
