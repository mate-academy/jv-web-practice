<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: vikaa
  Date: 13.06.2023
  Time: 09:18
  To change this template use File | Settings | File Templates.
--%>
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
            <td><c:out value="${car.manufacturer.name}" /></td>
        </tr>
    </c:forEach>
</table>

<h1>Create new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Name <input type="text" name="model"><br>
    Manufacturer <input type="number" name="manufacturer_id"><br>
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
