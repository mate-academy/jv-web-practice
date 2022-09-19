<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Fill the form below to add driver to car:</h1>
<h2>Cars</h2>
<table>
<tr>
    <td>Id</td>
    <td>Model</td>
    <td>Manufacturer</td>
</tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
        </tr>
    </c:forEach>
</table>
<h2>Drivers</h2>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
        </tr>
    </c:forEach>
</table>
<h2>Choose Car's ID and choose Driver's ID from the tables:</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car's ID <input type="number" name="carId" required><br>
    Driver's ID <input type="number" name="driverId" required><br>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>
