<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create car (with no drivers by default)</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model: <input type="text" name="car_model" placeholder="Car model"><br>
    Manufacturer ID: <input type="text" name="manufacturer_id" placeholder="Manufacturer ID"><br>
    <button type="submit"> Create</button>
</form>
<br>
<a href="${pageContext.request.contextPath}/index">Back to main menu</a>
</body>
</html>
