<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee | EMS</title>

    <style>
        body {
            margin: 0;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #eef2f7, #cfd9df);
        }
        .navbar {
            background-color: #1f2937;
            padding: 15px 40px;
            color: white;
        }
        .navbar h1 {
            margin: 0;
            font-size: 22px;
        }
        .form-container {
            max-width: 650px;
            background-color: white;
            margin: 50px auto;
            padding: 35px;
            border-radius: 14px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.12);
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #111827;
        }
        .form-group {
            margin-bottom: 18px;
        }
        label {
            display: block;
            margin-bottom: 6px;
            font-weight: 600;
            color: #374151;
        }
        input {
            width: 100%;
            padding: 10px 12px;
            border-radius: 8px;
            border: 1px solid #d1d5db;
            font-size: 14px;
        }
        input:focus {
            outline: none;
            border-color: #2563eb;
            box-shadow: 0 0 0 2px rgba(37, 99, 235, 0.2);
        }
        .btn {
            width: 100%;
            padding: 12px;
            margin-top: 15px;
            border: none;
            border-radius: 10px;
            background-color: #16a34a;
            color: white;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #15803d;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #2563eb;
            font-weight: 500;
        }
        .back-link:hover {
            text-decoration: underline;
        }
        .note {
            font-size: 13px;
            color: #6b7280;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <h1>Employee Management System</h1>
    </div>

    <div class="form-container">
        <h2>Update Employee Details</h2>
        <p class="note">Enter Employee ID and update required fields</p>

       <form action="UpdateEmployeeServlet" method="post">

    <!-- Hidden ID -->
    <input type="hidden" name="id" value="${id}">

    <div class="form-group">
        <label>Employee Name</label>
        <input type="text" name="name" value="${name}" required>
    </div>

    <div class="form-group">
        <label>Email Address</label>
        <input type="email" name="email" value="${email}" required>
    </div>

    <div class="form-group">
        <label>Designation</label>
        <input type="text" name="designation" value="${designation}" required>
    </div>

    <div class="form-group">
        <label>Date of Joining</label>
        <input type="date" name="doj" value="${doj}">
    </div>

    <div class="form-group">
        <label>Basic Salary</label>
        <input type="number" name="salary" value="${salary}" required>
    </div>

    <button type="submit" class="btn">Update Employee</button>
    
   
    
</form>


        <a href="index.jsp" class="back-link">← Back to Dashboard</a>
    </div>

</body>
</html>