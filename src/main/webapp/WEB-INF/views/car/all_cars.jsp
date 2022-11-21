<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All Cars</title>
    <link rel="stylesheet" href="<c:url value="/static/css/style.css"/>" type="text/css">
</head>
<body>
<h1>All cars</h1>
    <table>
        <tr>
            <th>Car id</th>
            <th>Model</th>
            <th>Manufacturer</th>
            <th>Drivers</th>
            <th>Add driver</th>
            <th>Delete car</th>
        </tr>
        <c:forEach var="car" items="${cars}">
            <tr>
                <td>"${car.id}"</td>
                <td>"${car.model}"</td>
                <td>"${car.manufacturer.name}"</td>
                <td>"${car.drivers}"</td>
                <td><a href="${pageContext.request.contextPath}/cars/add_driver?car_id=${car.id}">Add driver</a></td>
                <td><a href="${pageContext.request.contextPath}/cars/delete?car_id=${car.id}">Delete car</a></td>
            </tr>
        </c:forEach>
    </table>
    <a href="${pageContext.request.contextPath}/cars/add">Add new car</a>
</body>
</html>
