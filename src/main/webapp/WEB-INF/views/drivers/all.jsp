<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Get all Drivers</title>
</head>
<body>
<h1>Registered drivers</h1>
<table>
  <colgroup>
    <col span="4" style="background-color:#CCCCCC">
  </colgroup>
  <tr>
    <th>ID</th>
    <th>DRIVERS NAME</th>
    <th>DRIVERS NUMBER LICENSE</th>
    <th>DELETE</th>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}" /></td>
      <td><c:out value="${driver.name}" /></td>
      <td><c:out value="${driver.licenseNumber}" /></td>
      <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete this driver</a></td>
    </tr>
  </c:forEach>
</table>
<input type="button" value="Add new driver" onClick='location.href="http://localhost:8080/drivers/add"'>
</body>
</html>
