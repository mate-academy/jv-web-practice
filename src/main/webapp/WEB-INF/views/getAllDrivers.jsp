<%--
  Created by IntelliJ IDEA.
  User: PRO
  Date: 21.09.2022
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All drivers</title>
</head>
<body>
<h1>All drivers</h1>
<table>
  <tr>
    <th>Id</th>
    <th>Name</th>
    <th>License number</th>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td>c:out value="${driver.id}"</td>
      <td>c:out value="${driver.name}"</td>
      <td>c:out value="${driver.licenseNumber}"</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
