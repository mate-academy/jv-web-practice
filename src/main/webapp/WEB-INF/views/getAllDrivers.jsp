<%--
  Created by IntelliJ IDEA.
  User: Sirko
  Date: 03.02.2023
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Get all drivers</title>
</head>
<body>
<p><a href="${pageContext.request.contextPath}/index">main page</a> </p><br>
<h1>List of drivers</h1>
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>License number</td>
    <td>Delete</td>
  </tr>
  <c:forEach items="${drivers}" var = "driver">
    <tr>
      <td><c:out value="${driver.id}" /></td>
      <td><c:out value="${driver.name}" /></td>
      <td><c:out value="${driver.licenseNumber}" /></td>
<%--      <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a></td>--%>
    </tr>
  </c:forEach>
</table>
</body>
</html>