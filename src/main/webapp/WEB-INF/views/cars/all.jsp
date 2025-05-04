<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>Hi. Below you can see table with all cars.</h1><br>
<h1>You can delete car using 'delete this'.</h1><br>
<style>
  table {
    border-collapse: collapse;
  }
  td {
    border: 1px solid black;
    padding: 5px;
  }
  th {
    border: 1px solid black;
    padding: 5px;
    font-weight: bold;
    text-align: center;
  }
</style>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER</td>
    <td>DRIVERS</td>
    <td>DELETE</td>
  </tr>
  <c:forEach items="${cars}" var="car">
  <tr>
    <td><c:out value="${car.id}" /></td>
    <td><c:out value="${car.model}" /></td>
    <td><c:out value="${car.getManufacturer().name}" /></td>
    <td><c:forEach items="${car.getDrivers()}" var="driver">
      <c:out value="${driver.name}" />
      <br />
    </c:forEach></td>
    <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this</a> </td>
  </tr>
  </c:forEach>
</body>
</html>
