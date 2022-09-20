<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All cars</title>
</head>
<body>
<table>
  <tr>
    <td><h3>Id</h3></td>
    <td><h3>Name</h3></td>
    <td><h3>License number</h3></td>
    <td><h3>Drivers</h3></td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.getId()}" /></td>
      <td><c:out value="${car.getModel()}" /></td>
      <td><c:out value="${car.getManufacturer().getName()}" /></td>
      <td><c:out value="${car.getDrivers().toString()}" /></td>
      <td>
        <a href="${pageContext.request.contextPath}/cars/delete?id=${car
                .getId()}"><button>delete this car</button></a>
      </td>
    </tr>
  </c:forEach>
  <form action="${pageContext.request.contextPath}/cars/add">
    <input type="submit" value="Add new Car">
  </form>
  <form action="${pageContext.request.contextPath}/cars/drivers/add">
    <input type="submit" value="Add Driver to the Car">
  </form>
</table>
</body>
</html>
