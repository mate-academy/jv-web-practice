<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Drivers</title>
</head>
<body>
<h1>Drivers: </h1>
<table>
  <tr>
    <td>Id</td>
    <td>Name</td>
    <td>LicenseNumber</td>
    <td>delete driver</td>
    <form action="${pageContext.request.contextPath}/index">
      <input type="submit" value="Return to First page">
    </form>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}"/></td>
      <td><c:out value="${driver.name}"/></td>
      <td><c:out value="${driver.licenseNumber}"/></td>
      <td><a href="${pageContext.request.contextPath}/deleteDriver?id=${driver.id}">delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>