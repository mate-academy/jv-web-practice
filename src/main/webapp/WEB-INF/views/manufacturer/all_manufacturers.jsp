<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All Manufacturers</title>
    <link rel="stylesheet" href="<c:url value="/static/css/style.css"/>" type="text/css">
</head>
<body>
<h1>All manufacturers</h1>
<table>
  <tr>
    <th>Manufacturer id</th>
    <th>Name</th>
    <th>Country</th>
    <th>Delete manufacturer</th>
  </tr>
  <c:forEach var="manufacturer" items="${manufacturers}">
    <tr>
      <td>${manufacturer.id}</td>
      <td>${manufacturer.name}</td>
      <td>${manufacturer.country}</td>
      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?manufacturer_id=${manufacturer.id}">Delete manufacturer</a></td>
    </tr>
  </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/manufacturers/add">Add new manufacturer</a>
</body>
</html>
