<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <style>
    h1 {text-align: center;}
    form {text-align: center;}
  </style>
</head>
<head>
  <title>Create driver</title>
</head>
<body>
<h1>Create new driver</h1>
<form method="post" action="${pageContext.request.contextPath}create">
  Name <input type="text" name="name"><br>
  License Number <input type="text" name="licenseNumber"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
