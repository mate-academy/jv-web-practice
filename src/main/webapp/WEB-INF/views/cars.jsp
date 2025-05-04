<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Cars</title>
</head>
<body>
<%@ include file="/WEB-INF/views/navigationBar.jsp"%>
<div style="font-family: arial; float: left; display: inline-block; background: url('https://i2.paste.pics/MXS5H.png') no-repeat; width: 1466px; height: 745px">
  <h2 style="color: steelblue">Our awesome cars:</h2>
  <table style="color: steelblue">
    <tr>
      <td>ID</td>
      <td>MODEL</td>
      <td>MANUFACTURER</td>
    </tr>
    <c:forEach items="${allCars}" var="car">
      <tr>
        <td><c:out value="${car.id}" /></td>
        <td><c:out value="${car.model}" /></td>
        <td><c:out value="${car.manufacturer.name}" /></td>
      </tr>
    </c:forEach>
  </table>
  <h3 style="color: steelblue">New car registration:</h3>
  <form method="post" action="${pageContext.request.contextPath}/cars/add">
    <div style="color: steelblue">Car's model <input type="text" name="model" required></div><br>
    <div style="color: steelblue">Manufacturer's ID <input type="number" name="manufacturer_id"></div><br>
    <button type="submit" style="color: steelblue">Confirm</button>
  </form>
  <h3 style="color: white">Link driver with a car by ID:</h3>
  <form method="post" action="${PageContext.request.contextPath}/cars/drivers/add">
    <div style="color: white">Car's ID <input type="number" name="car_id"></div><br>
    <div style="color: white">Driver's ID <input type="number" name="driver_id"></div><br>
    <button type="submit" style="color: steelblue">Confirm</button>
  </form>
</div>
</body>
</html>
