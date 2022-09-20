<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add driver to car</title>
</head>
<body>
<h1>Cars: </h1>
<table>
  <tr>
    <td>ID</td>
    <td>CAR_MODEL</td>
    <td>MANUFACTURER</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.name}" /></td>
    </tr>
  </c:forEach>
</table>
<h1>Drivers: </h1>
<table>
  <tr>
    <td>ID</td>
    <td>NAME</td>
    <td>LICENSE_NUMBER</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}" /></td>
      <td><c:out value="${driver.name}" /></td>
      <td><c:out value="${driver.licenseNumber}" /></td>
    </tr>
  </c:forEach>
</table>
<h1>Add driver to car form: </h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  CarID <input type="number" name="carId"><br>
  DriverID <input type="number" name="driverId"><br>
  <button type="submit">Add driver!</button>
</form>
</body>
</html>
