<%--
  Created by IntelliJ IDEA.
  User: Sirko
  Date: 03.02.2023
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Get all manufacturers</title>
</head>
<body>
<p><a href="${pageContext.request.contextPath}/index">main page</a> </p><br>
<h1>All manufacturers</h1>
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>Country</td>
    <td>Delete</td>
  </tr>
  <c:forEach items="${getAllManufacturers}" var = "getAllManufacturers">
    <tr>
      <td><c:out value="${getAllManufacturers.id}" /></td>
      <td><c:out value="${getAllManufacturers.name}" /></td>
      <td><c:out value="${getAllManufacturers.country}" /></td>
<%--      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete</a></td>--%>
    </tr>
  </c:forEach>
</table>
</body>
</html>