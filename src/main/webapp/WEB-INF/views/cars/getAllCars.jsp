<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>List of cars</h1>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.getId()}"/></td>
      <td><c:out value="${car.getModel()}"/></td>
      <td><c:out value="${car.getManufacturer().getName()}"/> </td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">Delete car</a></td>
    </tr>
  </c:forEach>
</table>
<form>
  <a href="http://localhost:8080/index">Return to homepage</a>
</form>
</body>
</html>
