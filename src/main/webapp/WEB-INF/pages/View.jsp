<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 40px;
        }

        h1 {
            color: #3b3b3b;
            margin-bottom: 30px;
        }

        table {
            width: 90%;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 5px 12px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #dddddd;
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        button {
            padding: 8px 14px;
            border: none;
            border-radius: 5px;
            color: white;
            cursor: pointer;
            font-size: 14px;
        }

        .edit-btn {
            background-color: #007bff;
        }

        .edit-btn:hover {
            background-color: #0069d9;
        }

        .delete-btn {
            background-color: #e74c3c;
        }

        .delete-btn:hover {
            background-color: #c0392b;
        }

        .top-button {
            background-color: #2ecc71;
            padding: 10px 16px;
            font-size: 15px;
            margin-right: 10px;
        }

        .top-button:hover {
            background-color: #27ae60;
        }

        .logout-btn {
            background-color: #e67e22;
            padding: 10px 16px;
            font-size: 15px;
            border: none;
            border-radius: 5px;
            color: white;
            cursor: pointer;
        }

        .logout-btn:hover {
            background-color: #d35400;
        }

        .action-buttons {
            margin-top: 20px;
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>

    <h1>Student List</h1>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Roll Number</th>
            <th>Department</th>
            <th>Email</th>
            <th>Contact</th>
            <th>cgpa</th>
            <th> interestedRole</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td>${student.rollNumber}</td>
                <td>${student.department}</td>
                <td>${student.email}</td>
                <td>${student.contactNumber}</td>
                <td>${student.cgpa}</td>
                <td>${student.interestedRole}</td>
                <td>
                    <a href="/edit/${student.id}">
                        <button class="edit-btn">Edit</button>
                    </a>
                </td>
                <td>
                    <a href="/deletestudent/${student.id}" onclick="return confirm('Are you sure you want to delete this student?')">
                        <button class="delete-btn">Delete</button>
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <div class="action-buttons">
        <a href="/addstudent">
            <button class="top-button">Add New Student</button>
        </a>
        <a href="/login">
            <button class="logout-btn">Logout</button>
        </a>
  
    </div>

</body>
</html>