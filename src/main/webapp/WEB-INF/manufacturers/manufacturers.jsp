<%--
  Created by IntelliJ IDEA.
  User: valdemar
  Date: 26.06.2023
  Time: 18:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get manufacturers</title>
</head>
<body>
<h1>Manufacturers</h1>
<table>
  <tr>
    <td>ID</td>
    <td>NAME</td>
    <td>COUNTRY</td>
  </tr>
  <c:forEach items = "${manufacturers}" var = "manufacturer">
    <tr>
      <td><c:out value = "${manufacturer.id}" /></td>
      <td><c:out value = "${manufacturer.name}" /></td>
      <td><c:out value = "${manufacturer.country}" /></td>
      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
