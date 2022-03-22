<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>|  ID  |</td>
        <td>|  NAME  |</td>
        <td>|  LICENSE_NUMBER  |</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.getId()}" /></td>
            <td><c:out value="${driver.getName()}" /></td>
            <td><c:out value="${driver.getLicenseNumber()}" /></td>
        </tr>
    </c:forEach>
</table>
<p><a href="${pageContext.request.contextPath}/drivers">Modify driver list</a></p>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>|  ID  |</td>
        <td>|  MODEL  |</td>
        <td>|  MANUFACTURER  |</td>
        <td>|  DRIVERS  |</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}" /></td>
            <td><c:out value="${car.getModel()}" /></td>
            <td><c:out value="${car.getManufacturer().getName()}" /></td>
            <td>
                <c:forEach items="${car.getDrivers()}" var="drivers">
                    <c:out value="${drivers.getName()}" />
                </c:forEach>
            </td>
        </tr>
    </c:forEach>
</table>
<p><a href="${pageContext.request.contextPath}/cars">Modify car list</a></p>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add/driver">
    Driver(driver id):<input type="text" name="driverId"><br>
    To car(car id):<input type="text" name="carId"><br>
    <button type="submit">Add</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">Back to menu</a></p>
</body>
</html>
