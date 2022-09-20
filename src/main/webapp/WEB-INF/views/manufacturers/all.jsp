<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>List of all manufacturers</title>
</head>
<body>
<h1>List of all manufacturers</h1>
<table>
  <tr>
    <td>ID</td>
    <td>MANUFACTURER</td>
    <td>COUNTRY</td>
    <td>DELETE MANUFACTURER</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}" /></td>
      <td><c:out value="${manufacturer.name}" /></td>
      <td><c:out value="${manufacturer.country}" /></td>
      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">Delete</a></td>
    </tr>
  </c:forEach>
</table>
<br>
<a href="${pageContext.request.contextPath}/manufacturers/add">Add new manufacture</a>
<br>
<a href="${pageContext.request.contextPath}/">Back to home</a>
</body>
</html>
