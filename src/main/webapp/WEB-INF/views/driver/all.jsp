<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Drivers</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/cars">Check all cars</a>
<a href="${pageContext.request.contextPath}/manufacturers">Check all manufacturers</a> <br>
<a href="${pageContext.request.contextPath}/drivers/create">Create driver</a>
<h1>Drivers list:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>Driver name</td>
    <td>License number</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td>${driver.getId()}</td>
      <td>${driver.getName()}</td>
      <td>${driver.getLicenseNumber()}</td>
      <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.getId()}">Delete driver</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
