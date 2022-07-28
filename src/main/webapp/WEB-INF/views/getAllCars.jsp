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
    <td>MANUFACTURER</td>
    <td>DRIVERS</td>
    <td>DELETE</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}"></c:out></td>
      <td><c:out value="${car.model}"></c:out></td>
      <td><c:out value="${car.manufacturer.toString()}"></c:out></td>
      <td><c:out value="${car.drivers.toString()}"></c:out></td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?carId=${car.id}">Delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
