<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
    <style>
      form {
        display: inline-block;
      }
    </style>
</head>
<body>
<h2>Drivers</h2>
<table border="1">
  <tr align="center">
    <th>ID</th>
    <th>Name</th>
    <th>License No</th>
    <th>Action</th>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr align="center">
      <td><c:out value="${driver.id} "/></td>
      <td><c:out value="${driver.name} "/></td>
      <td><c:out value="${driver.licenseNumber} "/></td>
      <td><a href="/drivers/delete?id=${driver.id}">delete driver</a> </td>
    </tr>
  </c:forEach>
</table>
<br>
<div align=""></div>
<form action="${pageContext.request.contextPath}/drivers/add">
  <input type="submit" value="Add new driver">
</form>
<form action="${pageContext.request.contextPath}/index">
  <input type="submit" value="Home page">
</form>
</body>
</html>
