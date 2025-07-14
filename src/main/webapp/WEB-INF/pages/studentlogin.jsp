<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background: #6a11cb;
            background: linear-gradient(to right, #2575fc, #6a11cb);
            color: white;
            text-align: center;
            padding: 100px;
        }

        form {
            display: inline-block;
            text-align: left;
            background: #ffffff10;
            padding: 30px;
            border-radius: 10px;
            backdrop-filter: blur(5px);
        }

        input {
            display: block;
            width: 250px;
            margin-bottom: 15px;
            padding: 10px;
        }

        button {
            background: #00c6ff;
            border: none;
            padding: 10px 20px;
            font-weight: bold;
            color: white;
            cursor: pointer;
        }
    </style>
</head>
<body>

<h2>Student Login</h2>

<form action="studentlogin" method="post">
    <input type="text" name="rollnumber" placeholder="Roll Number" required>
    <input type="password" name="password" placeholder="Password" required>
    <button type="submit">Login</button>
</form>

</body>
</html>
