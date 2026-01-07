<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find Employee | EMS</title>

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
        .box {
            max-width: 450px;
            background: white;
            margin: 80px auto;
            padding: 35px;
            border-radius: 14px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.12);
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #111827;
        }
        label {
            display: block;
            text-align: left;
            margin-bottom: 8px;
            font-weight: 600;
            color: #374151;
        }
        input {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #d1d5db;
            font-size: 14px;
        }
        input:focus {
            outline: none;
            border-color: #2563eb;
            box-shadow: 0 0 0 2px rgba(37,99,235,0.2);
        }
        .btn {
            width: 100%;
            margin-top: 20px;
            padding: 12px;
            background-color: #2563eb;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #1e40af;
        }
        .back {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #2563eb;
            font-weight: 500;
        }
    </style>
</head>
<body>

<div class="navbar">
    <h1>Employee Management System</h1>
</div>

<div class="box">
    <h2>Find Employee</h2>

    <form action="FetchEmployeeServlet" method="post">
        <label for="id">Employee ID</label>
        <input type="number" id="id" name="id" placeholder="Enter employee ID" required>

        <button type="submit" class="btn">Proceed</button>
    </form>

    <a href="index.jsp" class="back">← Back to Dashboard</a>
</div>

</body>
</html>