<%--
  Created by IntelliJ IDEA.
  User: valdemar
  Date: 26.06.2023
  Time: 18:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get drivers</title>
</head>
<body>
<h1>Drivers</h1>
<table>
  <tr>
    <td>ID</td>
    <td>NAME</td>
    <td>LICENSE_NUMBER</td>
  </tr>
  <c:forEach items = "${drivers}" var = "driver">
    <tr>
      <td><c:out value = "${driver.id}" /></td>
      <td><c:out value = "${driver.name}" /></td>
      <td><c:out value = "${driver.licenseNumber}" /></td>
      <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
