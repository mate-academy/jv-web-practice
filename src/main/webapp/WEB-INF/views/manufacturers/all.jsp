<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All manufacturers</title>
  <style><%@include file="/WEB-INF/css/styles.css"%></style>
</head>
<body>
<h1>All manufacturers</h1>
<table>
  <thead>
  <tr>
    <th>id</th>
    <th>Name</th>
    <th>Country</th>
    <th>v</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}"/></td>
      <td><c:out value="${manufacturer.name}"/></td>
      <td><c:out value="${manufacturer.country}"/></td>
      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">Delete</a></td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>
