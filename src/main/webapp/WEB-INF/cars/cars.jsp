<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Get cars</title>
</head>
<body>
<h1>Cars</h1>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER NAME</td>
    <td>DRIVERS</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.name}" /></td>
      <td>
        <c:forEach items="${car.drivers}" var="driver">
      <td><c:out value="${driver.id}" /></td>
      <td><c:out value="${driver.name}" /></td>
      <td><c:out value="${driver.licenseNumber}" /></td>
      </c:forEach>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
