<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturer</title>
</head>
<body>
<h2>List of manufacturers</h2>
<table>
  <tr>
    <td>ID</td>
    <td>NAME</td>
    <td>COUNTRY</td>
    <td>DELETE MANUFACTURER</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
  <tr>
    <td><c:out value="${manufacturer.id}"/></td>
    <td><c:out value="${manufacturer.name}"/></td>
    <td><c:out value="${manufacturer.country}"/></td>
    <td><a href="${pageContext.request.contextPath}/manufacturers/delete?=id${manufacturer.id}">manufacturer this driver</a><td>
  </tr>
  </c:forEach>
</body>
</html>
