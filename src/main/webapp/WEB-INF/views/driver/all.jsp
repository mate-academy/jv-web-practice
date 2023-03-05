<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head> <title> All Drivers </title> </head>
<body>
<h1> Drivers list </h1>
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>LicenseNumber</td>
    <td>DELETE</td>
  </tr>
  <c:forEach items="${drivers}" var = "driver">
    <tr>
      <td><c:out value = "${driver.getId()}"/></td>
      <td><c:out value = "${driver.getName()}"/></td>
      <td><c:out value = "${driver.getLicenseNumber()}"/></td>
      <td><a href="${pageContext.request.contextPath}/driver/delete?id=${driver.getId()}"> Delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
