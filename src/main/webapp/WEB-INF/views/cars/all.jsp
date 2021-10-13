<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>COUNTRY</td>
        <td>DRIVERS</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:out value="${car.manufacturer.country}" /></td>
            <td>
                <c:forEach items="${car.getDrivers()}" var="driver">
                    <c:out value="${driver.name}"/>
                    <c:out value="${driver.licenseNumber} " /><br>
                </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}"/>Delete</td>
        </tr>
    </c:forEach>
</table>
<form action="${pageContext.request.contextPath}/index" target="_blank">
    <button>Back to main</button>
</form>
</body>