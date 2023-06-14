<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>Cars: </h1>
<table>
    <tr>
        <td>Id</td>
        <td>Model</td>
        <td>Manufacturer</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.id}" /></td>
        </tr>
    </c:forEach>
</table>

<h1>Create new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Manufacturer <input type="number" name="manufacturer_id"><br>
    Model <input type="text" name="model"><br>
    <button type="submit">Submit and create car</button>
</form>


<h1>Add Driver to Car form</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id <input type="number" name="car_id"><br>
    Driver id <input type="number" name="driver_id"><br>
    <button type="submit">Submit and add driver</button>
</form>
</body>
</html>
