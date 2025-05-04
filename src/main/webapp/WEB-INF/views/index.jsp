<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi</title>
</head>
<h1>Choose action:</h1>
<body>
<label>Create a car:</label><br>
<form action="<c:url value="/cars/add"/>">
    <input type="submit" value=" -> " />
</form>
<label>Create a driver:</label><br>
<form action="<c:url value="/drivers/add"/>">
    <input type="submit" value=" -> " />
</form>
<label>Create a manufacturer:</label><br>
<form action="<c:url value="/manufacturers/add"/>">
    <input type="submit" value=" -> " />
</form>
<label>Get all drivers:</label><br>
<form action="<c:url value="/drivers"/>">
    <input type="submit" value=" -> " />
</form>
<label>Add driver to car:</label><br>
<form action="<c:url value="/drivers/cars/add"/>">
    <input type="submit" value=" -> " />
</form>
<label>Get all cars:</label><br>
<form action="<c:url value="/cars"/>">
    <input type="submit" value=" -> " />
</form>
<label>Get all manufacturers:</label><br>
<form action="<c:url value="/manufacturers"/>">
    <input type="submit" value=" -> " />
</form>
</body>
</html>
