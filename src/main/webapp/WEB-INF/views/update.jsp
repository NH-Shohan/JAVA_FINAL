<%@ page contentType="text/html" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <style>
        body {
            background-color: #fee2e2;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .content-container {
            width: 50%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h3 {
            color: #7f1d1d;
        }

        label {
            margin-top: 10px;
            display: block;
        }

        form {
            text-align: left;
        }

        input[type="text"],
        input[type="date"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #fee2e2;
        }

        input[type="submit"] {
            background-color: #dc2626;
            color: #fff;
            cursor: pointer;
            width: 30%;
        }

        a {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #7f1d1d;
        }

        a:hover {
            color: #dc2626;
        }
    </style>
</head>
<body>

<div class="content-container">
    <h3>Update Page</h3>

    <form:form method="post" action="${pageContext.request.contextPath}/students/${student.id}/edit" modelAttribute="student">

        <label for="name">Name</label>
        <form:input path="name" id="name"/>
        <form:errors path="name"/>

        <br>

        <label for="dateOfBirth">Date Of Birth</label>
        <form:input type="date" path="dateOfBirth" id="dateOfBirth"/>
        <form:errors path="dateOfBirth"/>

        <br>

        <label for="email">Email</label>
        <form:input path="email" id="email"/>
        <form:errors path="email"/>

        <br>

        <label for="gender">Gender</label>
        <form:input path="gender" id="gender"/>
        <form:errors path="gender"/>

        <br>

        <label for="quota">Quota</label>
        <form:input path="quota" id="quota"/>
        <form:errors path="quota"/>

        <br>

        <label for="country">Country</label>
        <form:input path="country" id="country"/>
        <form:errors path="country"/>

        <br>

        <input type="submit" value="Update" />
    </form:form>
</div>

</body>
</html>
