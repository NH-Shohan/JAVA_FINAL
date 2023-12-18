<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Student</title>
</head>
<body>

<form method="post" action="/students/${student.id}/delete">
    <input type="submit" value="Delete"/>
</form>

</body>
</html>
