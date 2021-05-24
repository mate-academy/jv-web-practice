<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Get all cars</title>
</head>
<body>
    <h1>TABLE cars</h1>
    <table>
        <tr>
          <td>ID</td>
          <td>MODEL</td>
          <td>MANUFACTURER</td>
          <td>LIST_OF_DRIVERS</td>
          <td>DELETE</td>
        </tr>
        <c:forEach items="${cars}" var="car">
        <tr>
          <td><c:out value="${car.getId()}" /></td>
          <td><c:out value="${car.getModel()}" /></td>
          <td><c:out value="${car.getManufacturer()}" /></td>
          <td><c:out value="${car.getDrivers()}" /></td>
          <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">delete this car</a></td>
        </tr>
        </c:forEach>
    </table>
</body>
</html>
