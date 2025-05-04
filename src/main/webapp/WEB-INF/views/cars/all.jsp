<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Display all cars</title>
</head>
<body>
  <h1>List of cars:</h1>
<table>
  <tr>
    <th>Id</th>
    <th>Car model</th>
    <th>Manufacturer name</th>
    <th>Manufacturer country</th>
    <th>Driver name</th>
    <th>Delete</th>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}"/></td>
      <td><c:out value="${car.model}"/></td>
      <td><c:out value="${car.manufacturer.name}"/></td>
      <td><c:out value="${car.manufacturer.country}"/></td>
      <td><c:forEach items="${car.drivers}" var="driver">
          ${driver.id} ${driver.name} ${driver.licenseNumber} <br>
      </c:forEach></td>
      <td>
        <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
