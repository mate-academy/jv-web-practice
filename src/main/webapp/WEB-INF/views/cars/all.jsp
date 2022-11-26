<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All cars</title>
</head>
<body>
<table border="1" cellspacing="0" cellpadding="10">
  <caption>All cars</caption>
  <tr>
    <th>Id</th>
    <th>Manufacturer</th>
    <th>Model</th>
    <th>Country</th>
    <th>Drivers<th>
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