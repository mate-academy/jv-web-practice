<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Get all cars</title>
</head>
<body>
<style>
  .button-link {
    display: inline-block;
    padding: 4px 6px;
    background-color: #0045b3;
    color: #fff;
    text-decoration: none;
    border-radius: 4px;
    border: none;
    cursor: pointer;
  }

  .button-link:hover {
    background-color: #0078b3;
  }
</style>
<h1>List of cars:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER</td>
    <td>DRIVERS</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer}" /></td>
      <td><c:out value="${car.drivers}" /></td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}" class="button-link">DELETE</a></td>
    </tr>
  </c:forEach>
</table>

<h1>Add driver to car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car id <input type="text" name="car_id"><br>
  Driver id<input type="text" name="driver_id"><br>
  <button type="submit">Add driver</button>
</form>

<h1>Remove driver from car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/delete">
  Car id <input type="text" name="car_id"><br>
  Driver id<input type="text" name="driver_id"><br>
  <button type="submit">Remove driver</button>
</form>

<h1>List of drivers:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>NAME</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}" /></td>
      <td><c:out value="${driver.name}" /></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
