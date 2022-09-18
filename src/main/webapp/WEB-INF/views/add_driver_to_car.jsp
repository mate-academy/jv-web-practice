<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Promidor
  Date: 18.09.2022
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h3>Add driver to car</h3>
<form method="post" name="carDriverId">
  Car ID <input type="text" name="carId"><br>
  Driver ID <input type="text" name="driverId"><br>
    <button type="submit">submit</button>
</form>

<h3>List of drivers:</h3>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>License number</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.getId()}" /></td>
            <td><c:out value="${driver.getName()}" /></td>
            <td><c:out value="${driver.getLicenseNumber()}" /></td>
        </tr>
    </c:forEach>
</table>

<h3>List of cars:</h3>
<table>
    <tr>
        <td>Id</td>
        <td>Manufacturer</td>
        <td>Model</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}" /></td>
            <td><c:out value="${car.getManufacturer().getName()}" /></td>
            <td><c:out value="${car.getModel()}" /></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
