<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Get all manufacturers</title>
</head>
<body>
<h1>All manufacturers</h1>
<table>
  <tr>
    <th>Id</th>
    <th>Name</th>
    <th>Country</th>
    <th>Delete</th>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}" /></td>
      <td><c:out value="${manufacturer.name}" /></td>
      <td><c:out value="${manufacturer.country}" /></td>
      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete</a></td>
    </tr>
  </c:forEach>
</table>
<br><a href="${pageContext.request.contextPath}">Home page</a><br>
</body>
</html>
