<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<table>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer's Name</td>
        <td>Manufacturer's Country</td>
        <td>Driver's Name</td>
        <td>Driver's License Number</td>
        <td>Delete</td>
    </tr>
  <c:forEach items="${cars}" var="car">
      <tr>
          <td><c:out value="${car.id}"></c:out></td>
          <td><c:out value="${car.model}"></c:out></td>
          <td><c:out value="${car.getManufacturer().name}"></c:out></td>
          <td><c:out value="${car.getManufacturer().country}"></c:out></td>
          <c:forEach items="${car.getDrivers()}" var="driver">
              <td><c:out value="${driver.name}"></c:out></td>
              <td><c:out value="${driver.licenseNumber}"></c:out></td>
          </c:forEach>
          <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete</a> </td>
      </tr>
  </c:forEach>
</table>
</body>
</html>
