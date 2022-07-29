<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service: Drivers</title>
</head>
<body>
<a href="/index">Home</a>
<h1>Drivers:</h1>
<table>
    <tr>
        <td><b>NAME</b></td>
        <td><b>LICENSE</b></td>
        <td></td>
    </tr>
    <c:forEach var="driver" items="${drivers}">
        <tr>
            <td>${driver.getName()}</td>
            <td>${driver.getLicenseNumber()}</td>
            <td><a href="drivers/delete?id=${driver.getId()}">delete</a></td>
        </tr>
    </c:forEach>
    <th colspan="3">
        <b>Total rows: ${drivers.size()}</b>
    </th>
</table>
<a href="/drivers/add">Add new driver...</a>
</body>
</html>
