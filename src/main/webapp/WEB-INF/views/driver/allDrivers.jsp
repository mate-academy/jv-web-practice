<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Getting all drivers</title>
</head>
<body>
<h1>Get all drivers</h1>
<table>
<tr>
  <td>ID</td>
  <td>NAME</td>
  <td>LICENSE NUMBER</td>
  <td>DELETE</td>
</tr>
<c:forEach items="${drivers}" var="driver">
<tr>
  <td>${driver.getId()}</td>
  <td>${driver.getName()}</td>
  <td>${driver.getLicenseNumber()}</td>
  <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.getId()}">Delete this driver</a></td>
</tr>
</c:forEach>
</table>
<br>
<a href="${pageContext.request.contextPath}/drivers/create">Add new driver</a>
<a href="${pageContext.request.contextPath}/index">Home page</a>
</body>
</html>
