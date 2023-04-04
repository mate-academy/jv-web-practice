<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all drivers</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>MANUFACTURER COUNTRY</td>
        <td>DRIVERS</td>
        <td>DELETE</td>
    </tr>
    <jsp:useBean id="cars" scope="request" type="java.util.List"/>
    <c:forEach items="${cars}" var ="car">
        <tr>
            <td>
                <c:out value="${car.id}" />
            </td>
            <td>
                <c:out value="${car.model}" />
            </td>
            <td>
                <c:out value="${car.manufacturer.name}" />
            </td>
            <td>
                <c:out value="${car.manufacturer.country}" />
            </td>
            <td>
                 <c:forEach var="driver" items="${car.drivers}">
                     ${driver.id} ${driver.name} ${driver.licenseNumber}<br>
                 </c:forEach>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

