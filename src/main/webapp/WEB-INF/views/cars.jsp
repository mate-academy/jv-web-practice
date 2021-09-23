<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Cars</title>
</head>
<body bgcolor="#fafad2">
<h1 align="center" style="color: lightsteelblue">List of cars</h1>
<div align="center">
  <a href="/index">Home</a>
  <a href="/cars">Show cars</a>
  <a href="/drivers">Show drivers</a>
  <a href="/manufacturers">Show manufacturers</a>
</div>

<a href="/cars/add">Create new Car</a><br>
<table border="1">
  <tr>
    <th>ID</th>
    <th>MODEL</th>
    <th>MANUFACTURER</th>
    <th>DRIVERS</th>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.id}" /></td>
      <td>
        <c:forEach items="${car.drivers}" var="driver">
          <c:out value="${driver.name} |" />
        </c:forEach>
      </td>
      <td><a href="/cars/drivers/add">ADD DRIVER</a></td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
