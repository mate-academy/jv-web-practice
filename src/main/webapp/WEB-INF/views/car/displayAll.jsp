<%--
  Created by IntelliJ IDEA.
  User: glebo
  Date: 03.02.2023
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All Cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>Model</td>
    <td>Manufacturer_id</td>
    <td>Drivers</td>
    <td>Delete</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}"/></td>
      <td><c:out value="${car.model}"/></td>
      <td><c:out value="${car.manufacturer.id}"/></td>
      <td><c:out value="${car.drivers}"/></td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete this car</a> </td>
    </tr>
  </c:forEach>
</table>
<h1>List of manufacturers:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>Country</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}"/></td>
      <td><c:out value="${manufacturer.name}"/></td>
      <td><c:out value="${manufacturer.country}"/></td>
    </tr>
  </c:forEach>
</table>
<h1>List of drivers:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>License_Number</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}"/></td>
      <td><c:out value="${driver.name}"/></td>
      <td><c:out value="${driver.licenseNumber}"/></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
