<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Drivers</title>
</head>
<body>
<h1>Our Drivers</h1>
<table>
  <tr>
    <th>ID</th>
    <th>NAME</th>
    <th>LICENSE NUMBER</th>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}"/></td>
      <td><c:out value="${driver.name}"/></td>
      <td><c:out value="${driver.licenseNumber}"/></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>

