<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Adding Driver</title>
</head>
<body>
<h1>List of Drivers!</h1>
<table>
  <tr>
    <td>CAR ID</td>
    <td>CAR MODEL</td>
    <td>MANUFACTURER ID</td>
    <td>MANUFACTURER NAME</td>
    <td>MANUFACTURER COUNTRY</td>
    <td>DRIVER ID</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}"></c:out></td>
      <td><c:out value="${car.model}"></c:out></td>
      <td><c:out value="${car.getManufacturer().id}"></c:out></td>
      <td><c:out value="${car.getManufacturer().name}"></c:out></td>
      <td><c:out value="${car.getManufacturer().country}"></c:out></td>
      <td><c:out value="${car.getDrivers().toString()}"></c:out></td>
      <td><a href="${pageContext.request.contextPath}/delete/car?carId=${car.id}">Delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
