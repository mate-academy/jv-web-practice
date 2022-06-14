<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 10.06.2022
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>List of all cars:</h1>
<table>
    <tr>
        <td>ID </td>
        <td>MODEL </td>
        <td>MANUFACTURER </td>
        <td>DRIVERS </td>
        <td>DELETE </td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <c:set var="drivers" value=""/>
            <c:forEach items="${car.getDrivers()}" var="driver">
                <c:set var="drivers" value="${drivers}${driver.getName()}; "/>
            </c:forEach>
            <td><c:out value="${drivers}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
