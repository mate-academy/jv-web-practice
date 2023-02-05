<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All drivers</title>
  <style>
    table, td, th {
      border: 1px solid;
      color: darkslateblue;
    }
  </style>
</head>
<body>
<h1>All drivers</h1>
<table>
  <tr>
    <th>ID</th>
    <th>NAME</th>
    <th>LICENSE NUMBER</th>
    <td>DELETE</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.getId()}"/></td>
      <td><c:out value="${driver.getName()}"/></td>
      <td><c:out value="${driver.getLicenseNumber()}"/></td>
      <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.getId()}">Delete this driver</a></td>

    </tr>
  </c:forEach>
</table>
<form method="get"
      action="${pageContext.request.contextPath}/createDriver">
  <button type="submit">
    Create new driver
  </button>
</form>
<form method="get"
      action="${pageContext.request.contextPath}/index">
  <button type="submit">
    back to service
  </button>
</form>
</body>
</html>
