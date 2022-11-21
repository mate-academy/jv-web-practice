<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Cars</title>
  </head>
  <body>
    <h2>Delete driver from car</h2>
    <p>Please chose a car and a driver from lists below and press Delete button</p>
    <form method="post">
      <label for="car">Car:</label><br>
      <select id="car" name="car">
        <c:forEach items="${cars}" var="car">
          <option value="${car.id}">${car.manufacturer.name} ${car.model}</option>
        </c:forEach>
      </select>
      <br>
      <label for="driver">Driver:</label><br>
      <select id="driver" name="driver">
        <c:forEach items="${drivers}" var="driver">
          <option value="${driver.id}">${driver.name} (Lic.No ${driver.licenseNumber})</option>
        </c:forEach>
      </select>
      <br><br>
      <input type="submit" value="Delete">
    </form>
  </body>
</html>
