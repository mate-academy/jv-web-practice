<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
  <title>All Manufacturers</title>
</head>
<body>
<h1>All Manufacturers</h1>
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>country</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td>${manufacturer.id}</td>
      <td>${manufacturer.name}</td>
      <td>${manufacturer.country}</td>
      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete this manufacturer</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
