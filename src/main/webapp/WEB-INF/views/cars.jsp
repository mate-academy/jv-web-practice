<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Cars</title>
  <style>
    table, th, td {
      border: 1px solid black;
      border-collapse: collapse;
    }
  </style>
</head>
<body>
<a href="${pageContext.request.contextPath}/cars/add"><h3>Add new car</h3></a>
<table>
  <thead>
    <tr>
      <th rowspan="2">ID</th>
      <th rowspan="2">Model</th>
      <th colspan="2">Manufacturer</th>
      <th colspan="2">Drivers</th>
    </tr>
    <tr>
      <th>Name</th>
      <th>Country</th>
      <th>Name</th>
      <th>License number</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${cars}" var="car">
      <tr>
        <td>
          <c:out value="${car.getId()}" />
        </td>
        <td>
          <c:out value="${car.getModel()}" />
        </td>
        <td>
          <c:out value="${car.getManufacturer().getName()}" />
        </td>
        <td>
          <c:out value="${car.getManufacturer().getCountry()}" />
        </td>
        <td>
          <c:forEach items="${car.getDrivers()}" var="driver">
            <p>
              <c:out value="${driver.getName()}" />
            </p>
          </c:forEach>
        </td>
        <td>
          <c:forEach items="${car.getDrivers()}" var="driver">
            <p>
              <c:out value="${driver.getLicenseNumber()}" />
            </p>
          </c:forEach>
        </td>
        <td>
          <a href="${pageContext.request.contextPath}/cars/drivers?id=${car.getId()}">
            <h3>manage drivers for this car</h3></a>
        </td>
        <td>
          <form method="post" action="${pageContext.request.contextPath}/cars/delete">
            <input type="hidden" name="id" value="${car.getId()}" />
            <button type="submit">delete this car</button>
          </form>
        </td>
      </tr>
    </c:forEach>
  </tbody>
</table>
</body>
</html>
