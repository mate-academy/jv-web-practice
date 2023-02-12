<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
  <title>All cars</title>
</head>
<body>
<h1>All cars</h1>
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>manufacturer id</td>
    <td>manufacturer name</td>
    <td>driver id</td>
    <td>driver name</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td>${car.id}</td>
      <td>${car.model}</td>
      <td>${car.manufacturer.id}</td>
      <td>${car.manufacturer.name}</td>
    <c:forEach items="${car.drivers}" var="driver">
      <td>${driver.id}</td>
      <td>${driver.name}</td>
    </c:forEach>
      <td><a href="${pageContext.request.contextPath}/cars/all?id=${car.id}">delete this car</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
