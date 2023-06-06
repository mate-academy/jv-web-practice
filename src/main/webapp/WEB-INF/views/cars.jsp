<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<h1>All cars</h1>
<form action="${pageContext.request.contextPath}/cars/add">
    <input type="submit" value="Add new car"/>
</form>
<form action="${pageContext.request.contextPath}/cars/drivers/add">
    <input type="submit" value="Add driver to car"/>
</form>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer</th>
        <th>Drivers</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${carsList}" var="car">
        <tr>
            <td>${car.id}</td>
            <td>${car.model}</td>
            <td>${car.manufacturer.name}</td>
            <td>
                <table>
                    <tbody>
                    <c:forEach items="${car.getDrivers()}" var="driver">
                        <tr>
                            <td>${driver.name}</td>
                            <td>${driver.licenseNumber}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
