<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Taxi cars</title>
</head>
<body>
<h2>Cars list</h2>
<table border="1" class="table_dark">
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>List of drivers</td>
        <td>Add car</td>
        <td>Add driver</td>
        <td>Delete car</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.getName()}"/></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.getName()}"/>
                </c:forEach>

            </td>
            <td><a href="${pageContext.request.contextPath}/cars/add">(+)</a></td>
            <td><a href="${pageContext.request.contextPath}/cars/drivers/add">(+)</a></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">(-)</a></td>
        </tr>
    </c:forEach>
</table>
<p><a href="${pageContext.request.contextPath}/index">Back</a></p>
</body>
</html>
