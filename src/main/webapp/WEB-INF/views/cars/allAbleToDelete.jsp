<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Get all cars</title>
</head>
<body>
<h1>List of all cars with manufacturer and drivers:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER NAME</td>
    <td>MANUFACTURER COUNTRY</td>
    <td>DELETE</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.name}" /></td>
      <td><c:out value="${car.manufacturer.country}" /></td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete car</a> </td>
    <tr>
      <td>DRIVERS ASSIGNED</td>
    <tr/>
    <c:forEach items="${car.drivers}" var="driver">
      <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
      </tr>
      <tr>
        <td><c:out value="${driver.id}" /></td>
        <td><c:out value="${driver.name}" /></td>
        <td><c:out value="${driver.licenseNumber}" /></td>
      </tr>
    </c:forEach>
    <tr>
      <td>__________________</td>
    <tr/>
        </tr>
  </c:forEach>
</table>
</body>
</html>
