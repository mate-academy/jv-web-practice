<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Add new car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car model <label>
    <input type="text" name="car_model">
</label><br>
    Car manufacturer id <label>
    <input type="number" name="manufacturer_id">
</label><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
