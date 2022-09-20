<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>List of all drivers</title>
</head>
<body>
<h1>List of all drivers</h1>
<table>
  <tr>
    <td>ID</td>
    <td>NAME</td>
    <td>LICENSE NUMBER</td>
    <td>DELETE DRIVER</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}" /></td>
      <td><c:out value="${driver.name}" /></td>
      <td><c:out value="${driver.licenseNumber}" /></td>
      <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete</a> </td>
    </tr>
  </c:forEach>
</table>
<br>
<a href="${pageContext.request.contextPath}/drivers/add">Add new driver</a>
<br>
<a href="${pageContext.request.contextPath}/">Back to home</a>
</body>
</html>
