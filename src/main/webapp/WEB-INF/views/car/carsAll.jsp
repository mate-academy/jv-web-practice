<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars : </h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>MODEL</th>
        <th>MANUFACTURER ID</th>
        <th>MANUFACTURER NAME</th>
        <th>DRIVERS</th>
    </tr>
    <c:forEach items="${cars}" var="car">
    <tr>
        <td align="center"><c:out value="${car.getId()}"/></td>
        <td align="center"><c:out value="${car.getModel()}"/></td>
        <td align="center"><c:out value="${car.getManufacturer().getId()}"/></td>
        <td align="center"><c:out value="${car.getManufacturer().getName()}"/></td>
        <td>
            <table>
                <c:forEach items="${car.getDrivers()}" var="driver">
                    <tr>
                        <td><c:out value="${driver.getId()}"/></td>
                        <td><c:out value="${driver.getName()}"/></td>
                    </tr>
                </c:forEach>
            </table>
        </td>
        <td>
            <a href=${pageContext.request.contextPath}"/cars/delete?id=${car.getId()}">
                <button type="submit">DELETE</button></a>
        </td>
        </c:forEach>
</table>
<p>
    <a href="${pageContext.request.contextPath}/">
        <button type="submit">MAIN MENU</button>
    </a>
</p>
</body>
</html>
