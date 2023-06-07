<%--
  Created by IntelliJ IDEA.
  User: Nikita
  Date: 07.06.2023
  Time: 12:51
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
