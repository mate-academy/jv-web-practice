<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>Manufacturers</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/drivers">Check all drivers</a>
<a href="${pageContext.request.contextPath}/cars">Check all cars</a> <br>
<a href="${pageContext.request.contextPath}/manufacturers/create">Create manufacturer</a>
<h1>Manufacturers list:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>Manufacturer name</td>
    <td>Manufacturer country</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td>${manufacturer.getId()}</td>
      <td>${manufacturer.getName()}</td>
      <td>${manufacturer.getCountry()}</td>
      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.getId()}">Delete manufacturer</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
