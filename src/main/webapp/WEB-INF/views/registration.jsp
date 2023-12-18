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

    .registration-container {
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

    label {
      margin-top: 10px;
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

    .error-message {
      color: #dc2626;
      font-size: 14px;
      margin-top: 5px;
    }
  </style>
</head>
<body>

<div class="navbar">
  <a href="${pageContext.request.contextPath}">Home</a>
  <a href="${pageContext.request.contextPath}/create">Create User</a>
  <a href="${pageContext.request.contextPath}/students">All Students</a>
</div>

<div class="registration-container">
    <h3>Registration Page</h3>

    <form:form method="post" action="store" modelAttribute="student">

        <label>Id</label>
        <form:input path="id" id="id"/>

        <label>Full Name</label>
        <form:input path="name" id="name"/>
        <form:errors path="name" cssClass="error-message"/>
        <br />

        <label>Date Of Birth</label>
        <form:input type="date" path="dateOfBirth" id="dateOfBirth"/>
        <form:errors path="dateOfBirth" cssClass="error-message"/>
        <br />

        <label>Email</label>
        <form:input path="email" id="email"/>
        <form:errors path="email" cssClass="error-message"/>
        <br />

        <label>Gender</label>
        <form:radiobutton path="gender" value="MALE" label="Male"/>
        <form:radiobutton path="gender" value="FEMALE" label="Female"/>
        <form:errors path="gender" cssClass="error-message"/>

        <br />
        <br />

        <label>Quota</label>
        <form:input path="quota" id="quota"/>
        <form:errors path="quota" cssClass="error-message"/>
        <br />

        <label>Country</label>
        <form:input path="country" id="country"/>
        <form:errors path="country" cssClass="error-message"/>
        <br />

        <input type="submit" value="Register" />
    </form:form>
</div>

</body>
</html>
