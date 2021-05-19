<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/index">Home</a>
<h1>All Drivers in DB:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>License Number</td>
  </tr>
  <c:forEach items="${driversList}" var="driver">
    <tr>
      <td><c:out value="${driver.id}" /></td>
      <td><c:out value="${driver.name}" /></td>
      <td><c:out value="${driver.licenseNumber}" /></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
