<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars:</h1>
<style>
table, td {
    border: 1px solid black;
    border-collapse: collapse;
    text-align: center;
}
td {
    padding: 5px;
}
tr:nth-child(even) {
    background-color: #DDDDDD;
}
</style>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER ID</td>
        <td>DRIVERS IDS</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.id}" /></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.id} " />
                </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}"
                   onclick="if(!confirm('Are you sure that you want to delete the car?')) return false">
                    delete this car
            </a></td>
        </tr>
    </c:forEach>
</table>
<br><a href="${pageContext.request.contextPath}/">Back to main</a>
</body>
</html>
