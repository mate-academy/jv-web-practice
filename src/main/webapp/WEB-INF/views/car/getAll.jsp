<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Get all cars</title>
</head>
<body>
<h1>All cars</h1>
<table>
  <tr>
    <td>Id</td>
    <td>Model</td>
    <td>Manufacturer name</td>
    <td>Manufacturer country</td>
    <td>Driver ID</td>
    <td>Driver Name</td>
    <td>Driver License</td>
    <td>Delete</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.name}" /></td>
      <td><c:out value="${car.manufacturer.country}" /></td>
      <td>
        <c:forEach var="driver" items="${car.drivers}">
          <c:out value="${driver.id}"/> <br>
        </c:forEach>
      </td>
      <td>
        <c:forEach var="driver" items="${car.drivers}">
          <c:out value="${driver.name}"/> <br>
        </c:forEach>
      </td>
      <td>
        <c:forEach var="driver" items="${car.drivers}">
          <c:out value="${driver.licenseNumber}"/> <br>
        </c:forEach>
      </td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
