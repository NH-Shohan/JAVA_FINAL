<%@ page isELIgnored="false" %>
<html>
<head>
  <style>
    body {
      background-color: #fee2e2;
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
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

    h1 {
      text-align: center;
      margin-top: 50px;
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

<h1>WELCOME</h1>
<h1>NAHIM HOSSAIN SHOHAN</h1>

</body>
</html>
