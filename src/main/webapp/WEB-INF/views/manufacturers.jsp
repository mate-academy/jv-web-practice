<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All manufacturers</title>
</head>
<body>
<h1>All manufacturers</h1>
<table>
  <tr>
    <td><h3>ID</h3></td>
    <td><h3>Name</h3></td>
    <td><h3>Country</h3></td>
    <td><h3>Delete</h3></td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}" /></td>
      <td><c:out value="${manufacturer.name}" /></td>
      <td><c:out value="${manufacturer.country}" /></td>
      <td><a href = "${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}"><button TYPE="submit">Delete</button></a></td>
    </tr>
  </c:forEach>
</table>
<br>
<a href = "${pageContext.request.contextPath}/index"><button TYPE="submit">Back</button></a>
</body>
</html>
