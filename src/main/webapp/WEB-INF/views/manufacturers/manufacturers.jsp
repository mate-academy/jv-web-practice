<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/index">Home</a>
<h1>All Manufacturers in DB:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>Country</td>
  </tr>
  <c:forEach items="${manufacturersList}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}" /></td>
      <td><c:out value="${manufacturer.name}" /></td>
      <td><c:out value="${manufacturer.country}" /></td>
      <td style="padding-left: 20px"><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">Delete</a></td>
    </tr>
  </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/manufacturers/add">Add new manufacturer</a>
</body>
</html>
