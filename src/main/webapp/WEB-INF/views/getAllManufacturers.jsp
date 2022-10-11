<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All manufacturers</title>
</head>
<body>
<h1> List of all manufacturers: </h1>
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>Country</td>
  </tr>
  <c:forEach items="${manufacturers}" var = "manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}"/> </td>
      <td><c:out value="${manufacturer.name}"/> </td>
      <td><c:out value="${manufacturer.country}"/> </td>
    </tr>
  </c:forEach>
</table>
<a href="manufacturers/add">Add new manufacturer</a>
</body>
</html>
