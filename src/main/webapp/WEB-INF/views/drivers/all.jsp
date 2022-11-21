<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
    <style>
      form {
        display: inline-block;
      }
      table, th, td {
        border: 1px solid;
        text-align: center;
      }
    </style>
</head>
<body>
<h2>Drivers</h2>
<table>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>License No</th>
    <th>Action</th>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id} "/></td>
      <td><c:out value="${driver.name} "/></td>
      <td><c:out value="${driver.licenseNumber} "/></td>
      <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
        delete driver</a></td>
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
