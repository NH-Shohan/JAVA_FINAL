<%@ page contentType="text/html" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>

<html>
<head></head>
<body>
    <h3>Student Management</h3>

    <a href="${pageContext.request.contextPath}/students">All Students</a>

    <h4>Student Details</h4>
    <p>Name: ${student.name}</p>
    <p>Email: ${student.email}</p>
    <p>Date of Birth: ${student.dateOfBirth}</p>
    <p>Gender: ${student.gender}</p>
    <p>Quota: ${student.quota}</p>
    <p>Country: ${student.country}</p>

    <a href="${pageContext.request.contextPath}/students/${student.id}/edit">Edit Student</a>
    <a href="${pageContext.request.contextPath}/students/${student.id}/delete">Delete Student</a>

    <h4>All Students</h4>
    <ul>
        <c:forEach var="s" items="${students}">
            <li>
                <a href="${pageContext.request.contextPath}/students/${s.id}">${s.name}</a>
            </li>
        </c:forEach>
    </ul>

    <h4>Edit Student</h4>
    <form:form method="post" action="${pageContext.request.contextPath}/students/${studentForUpdate.id}/update" modelAttribute="studentForUpdate">
        <label>Name</label>
        <form:input path="name" id="name"/>
        <form:errors path="name"/>
        <br><br>

        <label>Date Of Birth</label>
        <form:input type="date" path="dateOfBirth" id="dateOfBirth"/>
        <form:errors path="dateOfBirth"/>
        <br><br>

        <label>Email</label>
        <form:input path="email" id="email"/>
        <form:errors path="email"/>
        <br><br>

        <label>Gender</label>
        <form:select path="gender">
            <form:option value="MALE" label="Male"/>
            <form:option value="FEMALE" label="Female"/>
        </form:select>
        <br><br>

        <label>Quota</label>
        <form:input path="quota" id="quota"/>
        <form:errors path="quota"/>
        <br><br>

        <label>Country</label>
        <form:input path="country" id="country"/>
        <form:errors path="country"/>
        <br><br>

        <input type="submit" value="Update Student" />
    </form:form>

</body>
</html>
