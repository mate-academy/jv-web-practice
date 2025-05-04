<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Adding Driver</title>
</head>
<body>
<h1>List of Drivers!</h1>
<table>
  <tr>
    <td>ID</td>
    <td>LICENSE NUMBER</td>
    <td>NAME</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}"></c:out></td>
      <td><c:out value="${driver.licenseNumber}"></c:out></td>
      <td><c:out value="${driver.name}"></c:out></td>
      <td><a href="${pageContext.request.contextPath}/drivers/delete?driverId=${driver.id}">Delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
