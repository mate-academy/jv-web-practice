<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>List of all cars</title>
</head>
<body>
<h1>List of all cars</h1>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER ID</td>
    <td>MANUFACTURER NAME</td>
    <td>DELETE CAR</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
    <td><c:out value="${car.id}" /></td>
    <td><c:out value="${car.model}" /></td>
    <td><c:out value="${car.manufacturer.id}" /></td>
    <td><c:out value="${car.manufacturer.name}" /></td>
    <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete</a> </td>
    <td>
    <tr>
    <td>DRIVER ID</td>
    <td>DRIVER NAME</td>
    <td>DRIVER LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${car.drivers}" var="driver">
      <tr>
        <td><c:out value="${driver.id}" /></td>
        <td><c:out value="${driver.name}" /></td>
        <td><c:out value="${driver.licenseNumber}" /></td>
      </tr>
    </c:forEach>
    </td>
    </tr>
  </c:forEach>
</table>
<br>
<a href="${pageContext.request.contextPath}/cars/add">Add new car</a>
<br>
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add new driver to a car</a>
<br>
<a href="${pageContext.request.contextPath}/">Back to home</a>
</body>
</html>
