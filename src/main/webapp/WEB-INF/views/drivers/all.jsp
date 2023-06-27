<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Drivers</title>
  <style><%@include file='/WEB-INF/css/style.css' %></style>
</head>
<body>
<h1>Drivers List</h1>
<table>
  <thead>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>License Number</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="driver" items="${drivers}">
    <tr>
      <td>${driver.id}</td>
      <td>${driver.name}</td>
      <td>${driver.licenseNumber}</td>
      <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a></td>
    </tr>
  </c:forEach>
  </tbody>
</table>
<br><a href="${pageContext.request.contextPath}">Home page</a><br>
</body>
</html>