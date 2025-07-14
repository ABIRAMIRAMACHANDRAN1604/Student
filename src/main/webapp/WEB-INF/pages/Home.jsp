<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management</title>
<style>
    body {
        font-family: 'Segoe UI', sans-serif;
        background: linear-gradient(to right, #667eea, #764ba2);
        color: white;
        text-align: center;
        padding: 100px;
    }

    h1 {
        font-size: 48px;
        margin-bottom: 10px;
    }

    p {
        font-size: 20px;
        margin-bottom: 40px;
    }

    .button-container {
        margin-top: 30px;
    }

    a {
        text-decoration: none;
        background-color: white;
        color: #764ba2;
        padding: 14px 30px;
        border-radius: 10px;
        font-weight: bold;
        margin: 0 15px;
        transition: 0.3s ease;
    }

    a:hover {
        background-color: #f0f0f0;
        color: #5e3d91;
    }

    input[type="text"] {
        padding: 10px;
        border-radius: 5px;
        border: none;
        margin-top: 10px;
        width: 200px;
    }

    button {
        padding: 10px 20px;
        margin-left: 10px;
        border-radius: 5px;
        border: none;
        background-color: white;
        color: #764ba2;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s ease;
    }

    button:hover {
        background-color: #f0f0f0;
        color: #5e3d91;
    }
</style>
</head>
<body>
    <h1>Welcome to Student Management System</h1>
    <p>Select an option below to get started</p>

    <div class="button-container">
        <a href="addstudent">Add Student</a>
        <a href="view">View Students</a>
        <a href="login">Login</a>
    </div>
</body>
</html>
