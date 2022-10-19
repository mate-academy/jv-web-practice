<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<h1>List of drivers:</h1>
<table border="2">
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE_NUMBER</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${drivers}" var="driverCar">
        <tr>
            <td><c:out value="${driverCar.id}" /></td>
            <td><c:out value="${driverCar.name}" /></td>
            <td><c:out value="${driverCar.licenseNumber}" /></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driverCar.id}">Delete</a></td>
        </tr>

    </c:forEach>
</table>
<form>
    <div>
        <input type="button" value="Add new driver" onClick='location.href="${pageContext.request.contextPath}/drivers/add"'>
    </div>
</form>
</body>
</html>