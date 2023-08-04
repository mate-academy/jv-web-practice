<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver To Car</title>
</head>
<body>
<h1>Please fill out the form below to link the Driver with the Car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add/driver">
    Select a Car:&nbsp;
    <select name="car">
        <c:forEach items="${allCars}" var="car">
            <option value="${car.id}">${car.model} ${car.manufacturer.name}</option>
        </c:forEach>
    </select>
    <br/>
    Select a Driver:&nbsp;
    <select name="driver">
        <c:forEach items="${allDrivers}" var="driver">
            <option value="${driver.id}">${driver.name}</option>
        </c:forEach>
    </select>
    <br/><br/>
    <button type="submit">ADD DIVER TO CAR</button>
</form>

</body>
</html>
