<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>Cars</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/drivers">Check all drivers</a>
<a href="${pageContext.request.contextPath}/manufacturers">Check all manufacturers</a> <br>
<a href="${pageContext.request.contextPath}/cars/create">Create car</a>
<h1>Cars list:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>Model</td>
    <td>Manufacturer</td>
    <td>Drivers</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td>${car.getId()}</td>
      <td>${car.getModel()}</td>
      <td>${car.getManufacturer().getName()}</td>
      <td>
        <c:forEach items="${car.getDrivers()}" var="driver">
          ${driver.getName()}
          ${driver.getLicenseNumber()} <br>
        </c:forEach>
      </td>
      <td><a href="${pageContext.request.contextPath}/cars/drivers/add?car_id=${car.getId()}">Add driver</a></td>
      <c:if test="${!car.getDrivers().isEmpty()}">
        <td><a href="${pageContext.request.contextPath}/cars/drivers/delete?car_id=${car.getId()}">Delete driver</a></td>
      </c:if>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">Delete car</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
