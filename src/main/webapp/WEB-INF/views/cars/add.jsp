<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add car</title>
</head>
<body>
  <h1>To add a new car, please fill out the form below</h1>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/add">
  Manufacturer ID <input type="number" name="manufacturer_id" required><br>
  Model <input type="text" name="model" required><br>
  <button type="submit">Add</button>
</form>
</body>
</html>
