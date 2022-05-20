<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All</title>
</head>
<body>
<h1>All cars: </h1>

<table>
  <tr>
    <td>ID</td>
    <td>Model</td>
    <td>Manufacturer</td>
    <td>Country</td>
    <td>Name</td>
    <td>Delete</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}"/></td>
      <td><c:out value="${car.model}"/></td>
      <td><c:out value="${car.manufacturer.name}"/></td>
      <td><c:out value="${car.manufacturer.country}"/></td>
      <td>
        <c:forEach items="${car.drivers}" var="driver">
          <c:out value="${driver.name}"/>
      </c:forEach></td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
