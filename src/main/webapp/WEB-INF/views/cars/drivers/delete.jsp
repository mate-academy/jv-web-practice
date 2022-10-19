<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete driver from car</title>
</head>
<body>
<h1>Choose car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/delete">

    <div>
        Car: <select type="number" name="car_id">
        <c:forEach var="car" items="${cars}">
            <option value="<c:out value="${car.id}"/>"><c:out value="${car.model}"/></option>
        </c:forEach>
    </select>
    </div>
    <h2>Choose driver:</h2>
    <div>
        Driver: <select type="number" name="driver_id">
        <c:forEach var="driverCar" items="${drivers}">
            <option value="<c:out value="${driverCar.id}"/>"><c:out value="${driverCar.name}"/></option>
        </c:forEach>
    </select>
    </div>
    <div>
        <button type="submit">Delete driver from car</button>
    </div>
</form>
</body>
</html>
