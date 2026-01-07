package com.DBConnection;



	import java.sql.Connection;
	import java.sql.DriverManager;

	public class DBConnection {

	    private static final String URL =
	            "jdbc:mysql://localhost:3306/ems_db";

	    private static final String USER = "root";
	    private static final String PASSWORD = "Admin123"; // change this

	    public static Connection getConnection() {
	        Connection con = null;
	        try {
	            // Load MySQL Driver
	            Class.forName("com.mysql.cj.jdbc.Driver");

	            // Create Connection
	            con = DriverManager.getConnection(URL, USER, PASSWORD);
	            

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return con;
	    }
	}



