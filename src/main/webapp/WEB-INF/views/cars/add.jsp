<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Input data of car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add" >
    Car model <input type="text" name="car_model"><br>
    Manufacturer id <input type="number" name="manufacturer_id"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
