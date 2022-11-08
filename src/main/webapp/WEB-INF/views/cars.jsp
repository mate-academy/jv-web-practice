<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Cars</title>
  <style>
    table {
      border-collapse: collapse;
      width: 100%;
    }

    th, td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
  </style>
</head>
<body>
<h2>List of cars:</h2>
<table>
  <tr>
    <td>Id</td>
    <td>Model</td>
    <td>Manufacturer name</td>
    <td>Delete</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}"/></td>
      <td><c:out value="${car.model}"/></td>
      <td><c:out value="${car.manufacturer == null ? 'NONE' : car.manufacturer.name}"/></td>
      <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${car.id}">delete</a> </td>
    </tr>
    <tr>
      <td>Drivers</td>
      <td>id</td>
      <td>name</td>
      <td>license number</td>
      <td>remove</td>
    </tr>
    <c:forEach items="${car.drivers}" var="driver">
      <tr>
        <td></td>
        <td><c:out value="${driver.id}"/></td>
        <td><c:out value="${driver.name}"/></td>
        <td><c:out value="${driver.licenseNumber}"/></td>
        <td><a href="${pageContext.request.contextPath}/cars/drivers/delete?car_id=${car.id}&driver_id=${driver.id}">remove from car</a> </td>
      </tr>
    </c:forEach>
  </c:forEach>
</table>
</body>
</html>
