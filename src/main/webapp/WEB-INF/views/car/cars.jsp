<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Taxi service</title>
</head>
<body>
<table>
  <tr>
    <td>CAR ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER ID</td>
    <td>MANUFACTURER NAME</td>
    <td>DRIVER ID</td>
    <td>DRIVER NAME</td>
    <td>DRIVER LICENSE NUMBER</td>
    <td>DELETE</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.id}" /></td>
      <td><c:out value="${car.manufacturer.name}" /></td>
      <td>
        <c:forEach items="${car.drivers}" var="driver">
        <td><c:out value="${driver.id}" /></td>
        <td><c:out value="${driver.name}" /></td>
        <td><c:out value="${driver.licenseNumber}" /></td>
        </c:forEach>
      </td>
    <td><a href="${pageContext.request.contextPath}/cars/delete?id=${driver.id}">delete this car</a> </td>
    </tr>
  </c:forEach>
</table>
  <td><a href="${pageContext.request.contextPath}/service"><- back to service menu</a></td>
</body>
</html>
