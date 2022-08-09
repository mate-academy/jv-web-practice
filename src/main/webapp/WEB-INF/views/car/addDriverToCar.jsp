<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car service</title>
</head>
<body>
<h1>Please enter a car id and a driver id below:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id <input type="number" name="carId"><br>
    Driver id <input type="number" name="driverId"><br>
    <button type="submit">Add driver</button>
</form>
</body>
<body>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENCE NUMBER</td>
    </tr>

    <jsp:useBean id="alldrivers" scope="request" type="java.util.List"/>
    <c:forEach items="${alldrivers}" var="driver">
        <tr>
            <td><c:out value="${driver.getId()}" /></td>
            <td><c:out value="${driver.getName()}" /></td>
            <td><c:out value="${driver.getLicenseNumber()}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
    </tr>
    <jsp:useBean id="allcars" scope="request" type="java.util.List"/>
    <c:forEach items="${allcars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}" /></td>
            <td><c:out value="${car.getModel()}" /></td>
            <td><c:out value="${car.getManufacturer().getName()}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
