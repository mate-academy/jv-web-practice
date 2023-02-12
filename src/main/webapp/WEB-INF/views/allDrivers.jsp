<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>All Drivers</title>
</head>
<body>
<h1>All Drivers</h1>
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>License number</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td>${driver.id}</td>
      <td>${driver.name}</td>
      <td>${driver.licenseNumber}</td>
      <td><a href="${pageContext.request.contextPath}/driver/delete?id=${driver.id}">delete this driver</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
