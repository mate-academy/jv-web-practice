<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service: Manufacturers</title>
</head>
<body>
<a href="/index">Home</a>
<h1>Car manufacturers:</h1>
<table>
    <tr>
        <td><b>NAME</b></td>
        <td><b>COUNTRY</b></td>
        <td></td>
    </tr>
    <c:forEach var="manufacturer" items="${manufacturers}">
        <tr>
            <td>${manufacturer.getName()}</td>
            <td>${manufacturer.getCountry()}</td>
            <td><a href="manufacturers/delete?id=${manufacturer.getId()}">delete</a></td>
        </tr>
    </c:forEach>
    <th colspan="3">
        <b>Total rows: ${manufacturers.size()}</b>
    </th>
</table>
<a href="/manufacturers/add">Add new car manufacturer...</a>
</body>
</html>
