<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/">Home</a>
<h1>Car</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
    </tr>
    <tr>
        <td><c:out value="${car.id}" /></td>
        <td><c:out value="${car.model}" /></td>
        <td><c:out value="${car.manufacturer.name}" /></td>
    </tr>
    <tr>
        <td colspan="3">
            <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                Delete This Car
            </a>
        </td>
    </tr>
</table>
<h1>Car drivers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE_NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/drivers/remove?carId=${car.id}&driverId=${driver.id}">
                    Remove Driver From Car
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver:
    <select name="driverId">
        <c:forEach items="${driversToAdd}" var="driver">
            <option value="${driver.id}">${driver.name} / ${driver.licenseNumber}</option>
        </c:forEach>
    </select><br>
    <button type="submit">Add driver</button>
    <input type="hidden" name="carId" value="${car.id}">
</form>
</body>
</html>
