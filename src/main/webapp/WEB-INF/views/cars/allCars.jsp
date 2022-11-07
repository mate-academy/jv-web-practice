<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars</h1>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>NAME</td>
    <td>DRIVERS</td>
  </tr>
  <c:forEach items="${carDriverList}" var="carDriver">
    <tr>
      <td>${carDriver.key.id}</td>
      <td>${carDriver.key.model}</td>
      <td>${carDriver.key.manufacturer.name}</td>
      <td>
        <c:forEach items="${carDriver.value}" var ="driver">
            ${driver.name}<br>
        </c:forEach>
      </td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${carDriver.key.id}">delete this car</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
