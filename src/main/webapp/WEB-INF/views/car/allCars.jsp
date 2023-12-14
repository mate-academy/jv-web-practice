<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>List of all cars</title>
</head>
<body>
<h3>List of cars:</h3>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER</td>
    <td>DRIVERS</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}"/></td>
      <td><c:out value="${car.model}"/></td>
      <td><c:out value="${car.manufacturer.name}"/></td>
      <td>
        <c:forEach items="${car.drivers}" var="driver">
          <c:out value="${driver.name}"/>
        </c:forEach>
      </td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
    </tr>
  </c:forEach>
  <tr>
    <td><a href="${pageContext.request.contextPath}/cars/add">new car</a></td>
    <td><a href="${pageContext.request.contextPath}/cars/drivers/add">add driver</a></td>
  </tr>
</table>
</body>
</html>
