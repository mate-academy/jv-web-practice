<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/index">Home</a>
<h1>All Cars in DB:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Drivers</td>
    </tr>
    <c:forEach items="${carsList}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:out value="${car.drivers}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/drivers/add?id=${car.id}">Add driver</a></td>
            <td style="padding-left: 20px"><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete car</a></td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/cars/add">Add new car</a>
</body>
</html>
