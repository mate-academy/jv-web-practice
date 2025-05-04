<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add Driver to Car</title>
</head>
<body>
<h2>Add driver to car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver:
    <select name="driver_id">
        <c:forEach items="${driversList}" var="driver">
            <option value="${driver.id}">
                    ${driver.name}
            </option>
        </c:forEach>
    </select>
    <br>
    Car:
    <select name="car_id">
        <c:forEach items="${carsList}" var="car">
            <option value="${car.id}">
                    ${car.manufacturer.name} ${car.model}
            </option>
        </c:forEach>
    </select>
    <br>
    <button type="submit">Add</button>
</form>
</body>
</html>
