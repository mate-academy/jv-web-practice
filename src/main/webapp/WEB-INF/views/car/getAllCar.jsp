<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all car</title>
</head>
<body>
<h1>List of drivers:</h1>
<table>
  <tr>
    <td>CAR ID</td>
    <td>CAR MODEL</td>
    <td>MANUFACTURER NAME</td>
    <td>MANUFACTURER COUNTRY</td>
    <td>DRIVER NAME</td>
    <td>DRIVER LICENSE NUMBER</td>
    <td>DELETE</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}"/></td>
      <td><c:out value="${car.model}"/></td>
      <td><c:out value="${car.getManufacturer().name}"/></td>
      <td><c:out value="${car.getManufacturer().country}"/></td>
      <td><c:forEach items="${car.drivers}" var="driver">
          <c:out value="${driver.name}" /><br>
          <c:out value="${driver.licenseNumber}" /><br>
        </c:forEach>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
