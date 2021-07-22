<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create car</title>
</head>
<body>
<h1>New car:</h1>
<form method = "post" action="${pageContext.request.contextPath}/cars/create">
  Model : <input type = "text" required name = "model"><br>
  <br>
  Manufacturer id : <input type = "number" required name = "manufacturer_Id"><br>
  <br>
  <button type="submit">Create</button>
</form>
<br><a href="/index">To main</a>
</body>
</html>
