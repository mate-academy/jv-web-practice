<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>All cars</h1>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>MANUFACTURERNAME</td>
    <td>MANUFACTURERCOUNTRY</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}"/></td>
      <td><c:out value="${car.model}"/></td>
      <td><c:out value="${car.manufacturer.name}"/></td>
      <td><c:out value="${car.manufacturer.country}"/></td>
    </tr>
  </c:forEach>
</table>
<h2>List of drivers</h2>
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>License Number</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}" /></td>
      <td><c:out value="${driver.name}" /></td>
      <td><c:out value="${driver.licenseNumber}" /></td>
    </tr>
  </c:forEach>
</table>
<h3>Add driver to car</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Driver_ID <input type="text" name="driverId"><br>
  Car_ID <input type="text" name="carId"><br>
  <button type="submit">ADD</button>
</form>
</body>
</html>
