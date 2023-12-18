<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <style>
        body {
            background-color: #fee2e2;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #fecaca;
            overflow: hidden;
            text-align: center;
        }

        .navbar a {
            display: inline-block;
            padding: 14px 16px;
            text-decoration: none;
            color: #7f1d1d;
        }

        .navbar a:hover {
            background-color: #dc2626;
            color: #fff;
        }

        .content-container {
            width: 80%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #7f1d1d;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        td .action-buttons {
            display: flex;
            justify-content: space-around;
        }

        .action-button {
            border-radius: 5px;
            padding: 8px 12px;
            cursor: pointer;
        }

        .action-button.edit {
            border: 1px solid #f59e0b;
            color: #f59e0b;
        }

        .action-button.edit:hover {
            background-color: #f59e0b;
            color: #fff;
        }

        .action-button.delete {
            border: 1px solid #dc2626;
            color: #dc2626;
        }

        .action-button.delete:hover {
            background-color: #dc2626;
            color: #fff;
        }

        .action-button.details {
            border: 1px solid #4d7c0f;
            color: #4d7c0f;
        }

        .action-button.details:hover {
            background-color: #4d7c0f;
            color: #fff;
        }

        p {
            margin-top: 20px;
            color: #7f1d1d;
        }
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="navbar">
  <a href="${pageContext.request.contextPath}">Home</a>
  <a href="${pageContext.request.contextPath}/create">Create User</a>
  <a href="${pageContext.request.contextPath}/students">All Students</a>
</div>

<div class="content-container">
    <h2>All Students</h2>

    <c:if test="${not empty students}">
        <table border="1">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Date of Birth</th>
                <th>Gender</th>
                <th>Quota</th>
                <th>Country</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="student" items="${students}">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.email}</td>
                    <td>${student.dateOfBirth}</td>
                    <td>${student.gender}</td>
                    <td>${student.quota}</td>
                    <td>${student.country}</td>
                    <td class="action-buttons">
                        <a href="${pageContext.request.contextPath}/students/${student.id}/edit" class="action-button
                        edit">Edit</a>
                        <a href="${pageContext.request.contextPath}/students/${student.id}/delete" class="action-button
                        delete">Delete</a>
                        <a href="${pageContext.request.contextPath}/students/${student.id}" class="action-button
                        details">Details</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>

    <c:if test="${empty students}">
        <p>No students found.</p>
    </c:if>
</div>

</body>
</html>
