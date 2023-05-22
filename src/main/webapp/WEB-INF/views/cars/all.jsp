<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}" /></td>
            <td><c:out value="${car.getModel()}" /></td>
            <td><c:out value="${car.getManufacturer().getName()}" /></td>
            <td>
                <c:forEach items="${car.getDrivers()}" var="driver">
                    <c:out value="${driver.getName()}" /><br>
                </c:forEach>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table><br>
<a href="${pageContext.request.contextPath}/cars/create">Create new car</a><br>
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a><br>
<a href="${pageContext.request.contextPath}/">Back to main page</a><br>
</body>
</html>