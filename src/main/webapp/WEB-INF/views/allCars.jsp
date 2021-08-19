<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List of Cars:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER_ID</td>
    <td>DRIVERS</td>
    <td>DELETE</td>
  </tr>
  <c:forEach items="${allCars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.id}" /></td>
      <td><c:out value="${car.drivers}" /></td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete car</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
