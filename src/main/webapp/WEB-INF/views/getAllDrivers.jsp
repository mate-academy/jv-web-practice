<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers page</title>
</head>
<body>
<h3>Drivers</h3>
<table>
  <tr>
    <td><b>ID</b></td>
    <td><b>NAME</b>></td>
    <td><b>LICENSE NUMBER</b></td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}"/></td>
      <td><c:out value="${driver.name}"/></td>
      <td><c:out value="${driver.licenseNumber}"/></td>
      <td><a href = "${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
