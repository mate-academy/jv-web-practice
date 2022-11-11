<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>List of cars</title>
</head>
<body>
<h1>List of cars</h1>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER</td>
    <td>DELETE</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.getId()}"/></td>
      <td><c:out value="${car.getModel()}"/></td>
      <td><c:out value="${car.getManufacturer().getName()}"/></td>
      <td><a href="cars/delete">delete this car</a></td>
    </tr>
  </c:forEach>
</table>

</body>
</html>
