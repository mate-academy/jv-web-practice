<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All drivers</title>
    <link rel="stylesheet" href="<c:url value="/static/css/style.css"/>" type="text/css">
</head>
<body>
<h1>All drivers</h1>
<table>
  <tr>
    <th>Driver id</th>
    <th>Name</th>
    <th>License number</th>
    <th>Delete driver</th>
  </tr>
  <c:forEach var="driver" items="${drivers}">
    <tr>
      <td>${driver.id}</td>
      <td>${driver.name}</td>
      <td>${driver.licenseNumber}</td>
      <td><a href="${pageContext.request.contextPath}/drivers/delete?driver_id=${driver.id}">Delete driver</a></td>
    </tr>
  </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/drivers/add">Add new driver</a>
</body>
</html>
