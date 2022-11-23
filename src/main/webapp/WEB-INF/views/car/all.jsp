<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars:</title>
</head>
<body>
<table>
  <h1>Cars: </h1>
  <tr>
    <td>Id</td>
    <td>Model</td>
    <td>Manufacturer</td>
    <td>Country</td>
    <td>Driver</td>
  </tr>
  <c:forEach items="${cars}" var="car">
  <tr>
    <td><c:out value="${car.id}"/></td>
    <td><c:out value="${car.model}"/></td>
    <td><c:out value="${car.manufacturer == null ? '-' : car.manufacturer.name}"/></td>
    <td><c:out value="${car.manufacturer == null ? '-' : car.manufacturer.country}"/></td>
    <td>
      <c:forEach items="${car.drivers}" var="driver">
        <c:out value="${driver.name}"/><br>
      </c:forEach>
    </td>
    <td><a href="${pageContext.request.contextPath}/car/delete?id=${car.id}">delete</a> </td>
  </tr>
  </c:forEach>
</body>
</html>
