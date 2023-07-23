<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Taxi manufacturers</title>
</head>
<body>
<h2>Manufacturers list</h2>
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>Country</td>
    <td>Add manufacturer</td>
    <td>Delete manufacturer</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}"/></td>
      <td><c:out value="${manufacturer.name}"/></td>
      <td><c:out value="${manufacturer.country}"/></td>
      <td><a href="${pageContext.request.contextPath}/manufacturers/add">(+)</a></td>
      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">(-)</a></td>
    </tr>
  </c:forEach>
</table>
<p><a href="${pageContext.request.contextPath}/index">Back</a></p>
</body>
</html>
