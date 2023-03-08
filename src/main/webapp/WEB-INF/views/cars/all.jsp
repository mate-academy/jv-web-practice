<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All</title>
</head>
<body>
<h1>All cars</h1>
<table>
  <tr>
    <td>Car ID</td>
    <td>Model</td>
    <td>Manufacturer ID</td>
    <td>Manufacturer name</td>
    <td>Manufacturer country</td>
    <td>List of drivers</td>
  </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.id}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:out value="${car.manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/drivers/all?id=${car.id}">show list of drivers</a> </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete car</a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
