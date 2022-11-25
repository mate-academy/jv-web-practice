<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All cars</title>
</head>
<body>
<h4>All cars</h4>
<table border="1">
  <tr>
    <td>Id</td>
    <td>Manufacturer</td>
    <td>Model</td>
    <td>Country</td>
    <td>Drivers</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.getId()}"/></td>
      <td><c:out value="${car.getManufacturer().getName()}"/></td>
      <td><c:out value="${car.getModel()}"/></td>
      <td><c:out value="${car.getManufacturer().getCountry()}"/></td>
      <td><c:forEach items="${car.getDrivers()}" var="driver">
        <c:out value="${driver.getName()}"/><br>
      </c:forEach>
      </td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">Delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>