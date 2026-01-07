package com.EmployeeServlet;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.DBConnection.DBConnection;

@WebServlet("/FetchEmployeeServlet")
public class FetchEmployeeServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        try {
            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM employee WHERE id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                request.setAttribute("id", rs.getInt("id"));
                request.setAttribute("name", rs.getString("name"));
                request.setAttribute("email", rs.getString("email"));
                request.setAttribute("designation", rs.getString("designation"));
                request.setAttribute("doj", rs.getDate("doj"));
                request.setAttribute("salary", rs.getDouble("salary"));

                RequestDispatcher rd =
                        request.getRequestDispatcher("UpdateEmployee.jsp");
                rd.forward(request, response);

            } else {
                request.setAttribute("error", "Employee not found!");
                RequestDispatcher rd =
                        request.getRequestDispatcher("findEmployee.jsp");
                rd.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }
}
