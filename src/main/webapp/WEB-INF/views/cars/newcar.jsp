<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration of new Car</title>
</head>
<body>
<h1>Input new Car`s data:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/newcar">
    Car model : <input type="text" name="carmodel" placeholder="Car model"><br>
    Car manufacturer ID: <input type="text" name="carmanufacturerid" placeholder="Car manufacturer ID"><br>
    Car driver ID: <input type="text" name="cardriverid" placeholder="Car driver ID"><br>
    <button type="submit"> Input</button>
</form>
</body>
</br>
<a href="${pageContext.request.contextPath}/index">Back to main menu</a>
</body>
</html>
