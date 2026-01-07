<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management System</title>
    <style>
        body {
            margin: 0;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
        }
        .navbar {
            background-color: #1f2937;
            padding: 15px 40px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .navbar h1 {
            margin: 0;
            font-size: 22px;
            font-weight: 600;
        }
        .container {
            max-width: 1100px;
            margin: 40px auto;
            padding: 20px;
        }
        .title {
            text-align: center;
            margin-bottom: 40px;
        }
        .title h2 {
            font-size: 30px;
            color: #111827;
        }
        .title p {
            color: #4b5563;
        }
        .cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
            gap: 25px;
        }
        .card {
            background-color: white;
            border-radius: 12px;
            padding: 30px 20px;
            text-align: center;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 18px 40px rgba(0, 0, 0, 0.15);
        }
        .card h3 {
            margin-bottom: 15px;
            color: #1f2937;
        }
        .card p {
            color: #6b7280;
            font-size: 14px;
            margin-bottom: 25px;
        }
        .card a {
            text-decoration: none;
            padding: 10px 22px;
            border-radius: 8px;
            background-color: #2563eb;
            color: white;
            font-weight: 500;
            transition: background-color 0.3s ease;
        }
        .card a:hover {
            background-color: #1e40af;
        }
        .footer {
            text-align: center;
            padding: 20px;
            background-color: #1f2937;
            color: #9ca3af;
            margin-top: 60px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h1>Employee Management System</h1>
        <span>Admin Panel</span>
    </div>

    <div class="container">
        <div class="title">
            <h2>Welcome to EMS Dashboard</h2>
            <p>Manage employees efficiently with a secure and professional system</p>
        </div>
        <div class="cards">
            <div class="card">
                <h3>Add Employee</h3>
                <p>Register a new employee and store their details securely.</p>
                <a href="AddEmployee.jsp">Add</a>
            </div>
            <div class="card">
                <h3>Update Employee</h3>
                <p>Edit existing employee information quickly and easily.</p>
                <a href="SearchEmployee.jsp">Update</a>
            </div>
            <div class="card">
                <h3>View Employees</h3>
                <p>View a complete list of all employees and their details.</p>
                <a href="ViewEmployeeServlet">View</a>
            </div>
            <div class="card">
                <h3>Delete Employee</h3>
                <p>Remove employee records safely from the system.</p>
                <a href="deleteEmployee.jsp">Delete</a>
            </div>
        </div>
    </div>

    <div class="footer">
        © 2026 Employee Management System | All Rights Reserved
    </div>
</body>
</html>