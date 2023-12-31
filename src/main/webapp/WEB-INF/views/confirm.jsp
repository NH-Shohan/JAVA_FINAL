<%@ page contentType="text/html" %>
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
            width: 50%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h3 {
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

        hr {
            border: 1px solid #ccc;
            margin-top: 20px;
        }

        p {
            margin-top: 10px;
            color: #7f1d1d;
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
    <h3>Registration Success</h3>

    <hr>

    <table>
        <tr>
            <th>Field</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Full Name</td>
            <td>${student.name}</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>${student.email}</td>
        </tr>
        <tr>
            <td>Date Of Birth</td>
            <td>${student.dateOfBirth}</td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>${student.gender}</td>
        </tr>
        <tr>
            <td>Quota</td>
            <td>${student.quota}</td>
        </tr>
        <tr>
            <td>Country</td>
            <td>${student.country}</td>
        </tr>
    </table>
</div>

</body>
</html>
