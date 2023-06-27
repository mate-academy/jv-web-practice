<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All Cars</title>
  <%@include file='/WEB-INF/views/common/header.html' %>
</head>
<body>
<h1>All Cars:</h1>
<table>
  <tr>
    <td>Car id</td>
    <td>Model</td>
    <td>Manufacture id</td>
    <td>Manufacture name</td>
    <td>Manufacture country</td>
    <td>Drivers</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}"/></td>
      <td><c:out value="${car.model}"/></td>
      <td><c:out value="${car.manufacturer.id}"/></td>
      <td><c:out value="${car.manufacturer.name}"/></td>
      <td><c:out value="${car.manufacturer.country}"/></td>
      <td>
        <c:forEach items="${car.drivers}" var="driver">
      <td><c:out value="${driver.id}"/></td>
      <td><c:out value="${driver.name}"/></td>
      <td><c:out value="${driver.licenseNumber}"/></td>
      </c:forEach>
      </td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}"> delete </a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
