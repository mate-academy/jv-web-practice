<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Drivers</title>
  <style>
    table, th, td {
      border: 1px solid black;
      border-collapse: collapse;
    }
    th, td {
      padding: 5px;
      text-align: left;
    }
  </style>
</head>
<body>
<h1>Drivers List</h1>
<table>
  <thead>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>License Number</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="driver" items="${drivers}">
    <tr>
      <td>${driver.id}</td>
      <td>${driver.name}</td>
      <td>${driver.licenseNumber}</td>
      <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a></td>
    </tr>
  </c:forEach>
  </tbody>
</table>
<br><a href="${pageContext.request.contextPath}">Home page</a><br>
</body>
</html>
