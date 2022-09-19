<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all Cars</title>
</head>
<body>
<h1>List of all Cars</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Model</td>
        <td>Manufacturer ID</td>
        <td>Drivers</td>
        <td>Delete car</td>
        <form action="${pageContext.request.contextPath}/index">
            <input type="submit" value="Return to First page">
        </form>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer}"/></td>
            <td><c:out value="${car.drivers}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        </tr>
    </c:forEach>
    <form action="${pageContext.request.contextPath}/cars/add">
        <input type="submit" value="Add new Car">
    </form>
    <form action="${pageContext.request.contextPath}/cars/drivers/add">
        <input type="submit" value="Add Driver to the Car">
    </form>
</table>
</body>
</html>
