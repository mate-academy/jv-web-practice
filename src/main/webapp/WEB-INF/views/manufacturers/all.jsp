<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers</title>
    <style>
      form {
        display: inline-block;
      }
    </style>
</head>
<body>
<h2>All manufacturers</h2>
<table border="1">
  <tr align="center">
    <th>ID</th>
    <th>Name</th>
    <th>Country</th>
    <th>Action</th>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr align="center">
      <td><c:out value="${manufacturer.id} "/></td>
      <td><c:out value="${manufacturer.name} "/></td>
      <td><c:out value="${manufacturer.country} "/></td>
      <td><a href="/manufacturers/delete?id=${manufacturer.id}">delete manufacturer</a> </td>
    </tr>
  </c:forEach>
</table>
<br>
<form action="${pageContext.request.contextPath}/manufacturers/add">
  <input type="submit" value="Add new manufacturer">
</form>
</body>
</html>
