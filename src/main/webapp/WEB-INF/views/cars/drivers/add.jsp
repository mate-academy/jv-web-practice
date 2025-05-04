<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/">Home</a> | <a
        href="${pageContext.request.contextPath}/cars">Cars</a>
<h1>Choose driver to add</h1>
<h2>Car:</h2>
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
</table>
<h2>Driver:</h2>
<a href="${pageContext.request.contextPath}/drivers/create">Create New Driver</a>
<c:if test="${driversToAdd.size() > 0}">
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        <select name="driver_id">
            <c:forEach items="${driversToAdd}" var="driver">
                <option value="${driver.id}">${driver.name} / ${driver.licenseNumber}</option>
            </c:forEach>
        </select>
        <button type="submit">Add driver</button>
        <input type="hidden" name="car_id" value="${car.id}">
    </form>
</c:if>
</body>
</html>
