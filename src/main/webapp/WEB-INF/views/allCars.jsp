<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: OverDraft
  Date: 12.11.2022
  Time: 19:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <style>
    h1, table, th, td {
      border: 1px solid black;
      margin-left: auto;
      margin-right: auto;
      border-collapse: collapse;
      width: 500px;
      text-align: center;
      font-size: 20px;
    }
  </style>
</head>
<head>
  <title>Get all cars </title>
</head>
<body>
<h1>List of cars</h1>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER_NAME</td>
    <td>MANUFACTURER_COUNTRY</td>
    <td>DRIVERS</td>
    <td>DELETE</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.getManufacturer().getName()}" /></td>
      <td><c:out value="${car.getManufacturer().getCountry()}" /></td>
      <td><c:out value="${car.printDrivers()}" /></td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
