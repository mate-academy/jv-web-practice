<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Fill the form to add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <div>
        Driver ID: <select type="number" name="driver_id">
        <c:forEach var="driverCar" items="${drivers}">
            <option value="<c:out value="${driverCar.id}"/>"><c:out value="${driverCar.name}"/></option>
        </c:forEach>
    </select>
    </div>

    <div>
        Car ID: <select type="number" name="car_id">
        <c:forEach var="car" items="${cars}">
            <option value="<c:out value="${car.id}"/>"><c:out value="${car.model}"/></option>
        </c:forEach>
    </select>
    </div>

    <div>
        <button type="submit">Confirm</button>
    </div>

</form>
</body>
</html>
