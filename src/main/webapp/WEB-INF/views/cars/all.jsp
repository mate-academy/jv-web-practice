<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>Car ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DELETE CAR</td>
    </tr>
    <c:forEach items="${cars}" var="car">
    <tr>
        <td><c:out value="${car.id}"/></td>
        <td><c:out value="${car.model}"/></td>
        <td><c:out value="${car.manufacturer.name}"/></td>
        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">remove car ${car.id} from DB</a></td>
        </c:forEach>
</table>
<br>
<h1>List of all drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE</td>
        <td>REMOVE</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">remove driver ${driver.id}
                from DB</a></td>
        </tr>
    </c:forEach>
</table>
<br>
<h1>Give the driver a car by id:</h1>
<form method="post" action="${PageContext.request.contextPath}/cars/drivers/add">
    <table>
        <tr>
            <td>Input car id</td>
            <td><input type="number" name="car_id"></td>
        </tr>
        <tr>
            <td>Input driver id</td>
            <td><input type="number" name="driver_id"></td>
        </tr>
    </table>
    <button type="submit">add</button>
</form>
<br>
<%--</form><br>--%>
<h1>Give the driver a car by id second variant:</h1>
<form method="post" action="${PageContext.request.contextPath}/cars/drivers/add">
    <table>
        <tr>
            <td>
                <select name="driver_id">
                    <c:forEach items="${drivers}" var="driver">
                        <option value="${driver.id}">
                            <c:out value="${driver.name}"/>
                        </option>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select name="car_id">
                    <c:forEach items="${cars}" var="car">
                        <option value="${car.id}">
                            <c:out value="${car.model}"/>
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>
    </table>
    <button type="submit">add car2</button>
</form>
</body>
</html>
