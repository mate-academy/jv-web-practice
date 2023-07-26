<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<table>
  <tr>
    <td>Id</td>
    <td>Model</td>
    <td>Manufacturer</td>
    <td>Country</td>
    <td>Drivers</td>
    <td>Delete</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.name}" /></td>
      <td><c:out value="${car.manufacturer.country}" /></td>
      <td>
        <table>
      <c:forEach items="${car.drivers}" var="driver">
        <tr>
        <td><c:out value="${driver.name}" /></td>
        <td><c:out value="${driver.licenseNumber}" /></td>
        <tr>
      </c:forEach>
        </table>
      </td>
      <td><a href="${pageContext.request.contextPath}cars/delete?id=${car.id}">Delete this car</a> </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
