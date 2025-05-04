<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Getting all manufacturers</title>
</head>
<body>
<h1>Get all manufacturers:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>NAME</td>
    <td>COUNTRY</td>
    <td>DELETE</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td>${manufacturer.getId()}</td>
      <td>${manufacturer.getName()}</td>
      <td>${manufacturer.getCountry()}</td>
      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.getId()}">Delete this manufacturer</a></td>
    </tr>
  </c:forEach>
</table>
<br>
<a href="${pageContext.request.contextPath}/manufacturers/create">Add new manufacturer</a>
<a href="${pageContext.request.contextPath}/index">Home page</a>
</body>
</html>
