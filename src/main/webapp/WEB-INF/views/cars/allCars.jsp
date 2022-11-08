<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars</h1>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>NAME</td>
    <td>DRIVERS</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td>${car.id}</td>
      <td>${car.model}</td>
      <td>${car.manufacturer.name}</td>
      <td>
        <c:forEach items="${car.drivers}" var ="driver">
            ${driver.name}<br>
        </c:forEach>
      </td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
