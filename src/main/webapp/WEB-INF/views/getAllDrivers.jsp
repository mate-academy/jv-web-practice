<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Drivers</title>
</head>
<body>
<h1>List of all drivers</h1>
<table>
  <tr>
    <td>ID</td>
    <td>Drivers name</td>
    <td>License number</td>
  </tr>
  <c:forEach items="${drivers}" var = "driver">
    <tr>
      <td><c:out value="${driver.id}"/> </td>
      <td><c:out value="${driver.name}"/> </td>
      <td><c:out value="${driver.licenseNumber}"/> </td>
    </tr>
  </c:forEach>
</table>
<a href="addDriver">Add new driver</a>
</body>
</html>
