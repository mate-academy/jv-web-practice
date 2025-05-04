<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Adding Driver</title>
</head>
<body>
<h1>Add driver to DB</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Name: <input required type="text" name="name"><br>
  License: <input required type ="text" name="license_number"><br>
  <button type="submit">Add</button>
</form>
</body>
</html>
