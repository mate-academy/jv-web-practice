<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Add driver to a car</title>
  </head>
  <body>
    <h1>Choose car and driver from table</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
      Select car <select id="car" name="car_id" required>
        <c:forEach items="${cars}" var="car">
          <option value="${car.id}">${car.model}</option>
        </c:forEach>
      </select>
      Select driver <select id="driver" name="driver_id" required>
        <c:forEach items="${drivers}" var="driver">
          <option value="${driver.id}">${driver.name}</option>
        </c:forEach>
      </select>
      <button type="submit">Add</button>
    </form>
  </body>
</html>
