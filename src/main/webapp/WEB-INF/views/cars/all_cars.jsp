<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CARS</title>
</head>
<body>

<br><br>

<a href="${pageContext.request.contextPath}/cars/create">
  <input type="button" value="Add new car" />
</a><br><br>

<a href="${pageContext.request.contextPath}/cars/add-driver">
  <input type="button" value="Add new driver to car" />
</a><br><br>

<table>
  <tr>
    <td>ID</td>
    <td>Model</td>
    <td>Manufacturer</td>
    <td>Manufacturer country</td>
    <td>Car`s driver</td>

  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer}" /></td>
      <td><c:out value="${car.manufacturer.country}" /></td>
      <td>
        <c:forEach var="driver" items="${car.drivers}">
          ${driver.name} <br>
        </c:forEach>
      </td>
    </tr>
  </c:forEach>
</table>

    <br><br>
    <form method="post" action="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
      Choose car to delete <select name="car_id">
      <c:forEach items="${cars}" var="car">
        <option value="${car.id}">
          <c:out value="${car.model}" />
          -
          <c:out value="${car.manufacturer}" />
        </option>
      </c:forEach>
    </select> <br><br>
      <button type="submit">Bye-bye</button>
    </form>
</body>
</html>
