<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars:</title>
</head>
<body>
<table>
  <tr>
    <td>Id</td>
    <td>Model</td>
    <td>Manufacturer name</td>
  </tr>
  <c:forEach items="${cars}" var="car">
  <tr>
    <td><c:out value="${car.id}"/></td>
    <td><c:out value="${car.model}"/></td>
    <td><c:out value="${car.manufacturer == null ? 'NULL' : car.manufacturer.name}"/></td>
    <td><a href="${pageContext.request.contextPath}/car/delete?id=${car.id}">delete</a> </td>
  </tr>
  <tr>
    <td>Drivers</td>
    <td>id</td>
    <td>name</td>
    <td>license number</td>
  </tr>
  <c:forEach items="${car.drivers}" var="driver">
  <tr>
    <td></td>
    <td><c:out value="${driver.id}"/></td>
    <td><c:out value="${driver.name}"/></td>
    <td><c:out value="${driver.licenseNumber}"/></td>
  </tr>
  </c:forEach>
  </c:forEach>
</body>
</html>
