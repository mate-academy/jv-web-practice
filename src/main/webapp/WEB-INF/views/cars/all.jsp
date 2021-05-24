<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Админ
  Date: 24.05.2021
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars</h1>
<table>
    <tr>
        <td>id</td>
        <td>model</td>
        <td>Manufacturer name</td>
        <td>Manufacturer country</td>
        <td>Driver name</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.getManufacturer().name}"/></td>
            <td><c:out value="${car.getManufacturer().country}"/></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.name}" />
                </c:forEach>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>