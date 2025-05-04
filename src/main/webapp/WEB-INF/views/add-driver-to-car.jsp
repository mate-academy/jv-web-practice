<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Fill out the form to add a driver to car</h1>
<form action = "${pageContext.request.contextPath}/cars/drivers/add" method = "POST">
    Driver: <br/>
    <c:forEach items="${drivers}" var="driver">
        <input type="radio" id="${driver.id}" name="driver_id" value="${driver.id}" required>
        <label for="${driver.id}">${driver.name}</label><br>
    </c:forEach>
    Car: <br/>
    <c:forEach items="${cars}" var="car">
        <input type="radio" id="${car.id}" name="car_id" value="${car.id}" required>
        <label for="${car.id}">${car.model}</label><br>
    </c:forEach>
    <br/>
    <button type = "submit">Confirm</button>
</form>
</body>
</html>
