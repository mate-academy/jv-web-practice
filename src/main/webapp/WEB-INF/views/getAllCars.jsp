<%--
  Created by IntelliJ IDEA.
  User: Sirko
  Date: 03.02.2023
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Get all cars</title>
</head>
<body>
<p><a href="${pageContext.request.contextPath}/index">main page</a> </p><br>
<h1>List of cars</h1>
<table>
  <tr>
    <td>ID</td>
    <td>Model</td>
    <td>Manufacturer name</td>
    <td>Manufacturer country</td>
    <td>Drivers</td>
    <td>Delete</td>
  </tr>
  <c:forEach items="${cars}" var = "car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.name}" /></td>
      <td><c:out value="${car.manufacturer.country}" /></td>
      <td><c:out value="${car.drivers}" /></td>
<%--      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>--%>
    </tr>
  </c:forEach>
</table>
</body>
</html>