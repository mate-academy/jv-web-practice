<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All cars</title>
</head>
<body>
<h2>List of cars:</h2>
<style>
  table {
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid black;
    padding: 10px;
    text-align: left;
  }
</style>
<table>
  <tr>
    <td>ID</td>
    <td>Model</td>
    <td>Manufacturer's name</td>
    <td>Manufacturer's country</td>
    <td>Driver's name</td>
    <td>Driver's licence number</td>
    <td>Action</td>

  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.name}" /></td>
      <td><c:out value="${car.manufacturer.country}" /></td>
      <td><c:forEach items="${car.drivers}" var="entry">
          <c:out value="${entry.name}" /><br>
      </c:forEach></td>
      <td><c:forEach items="${car.drivers}" var="entry">
        <c:out value="${entry.licenseNumber}" /><br>
      </c:forEach></td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete this car</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
