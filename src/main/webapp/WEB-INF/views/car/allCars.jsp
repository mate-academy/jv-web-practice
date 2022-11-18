<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All cars</title>
</head>
<style>
  table {
    border: 1px solid;
    text-align: center;
    margin-top: 20%;
    width: 100%;
  }
  tr, td {
    border: 1px solid;
  }
  #innerTable {
    width: 100%;
    height: 100%;
    margin: 0 0 0 0;
  }
</style>
<body>
<table>
  <tr>
    <td>Car ID</td>
    <td>Car model</td>
    <td>Manufacturer name</td>
    <td>Manufacturer country</td>
    <td>Manufacturer ID</td>
    <td>Drivers</td>
    <td>Delete car</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.getId()}"/></td>
      <td><c:out value="${car.getModel()}"/></td>
      <td><c:out value="${car.getManufacturer().getName()}"/></td>
      <td><c:out value="${car.getManufacturer().getCountry()}"/></td>
      <td><c:out value="${car.getManufacturer().getId()}"/></td>
      <td>
        <table id="innerTable">
          <tr>
            <td>Name</td>
            <td>License number</td>
            <td>ID</td>
          </tr>
          <c:forEach items="${car.getDrivers()}" var="driver">
            <tr>
              <td><c:out value="${driver.getName()}"/></td>
              <td><c:out value="${driver.getLicenseNumber()}"/></td>
              <td><c:out value="${driver.getId()}"/></td>
            </tr>
          </c:forEach>
        </table>
      </td>
      <td>
        <a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">delete this car</a>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
