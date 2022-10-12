<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Get all Manufacturers</title>
</head>
<body>
<h1>Registered manufacturers</h1>
<table>
  <colgroup>
    <col span="4" style="background-color:#CCCCCC">
  </colgroup>
  <tr>
    <th>ID</th>
    <th>MANUFACTURER NAME</th>
    <th>MANUFACTURER COUNTRY</th>
    <th>DELETE</th>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}" /></td>
      <td><c:out value="${manufacturer.name}" /></td>
      <td><c:out value="${manufacturer.country}" /></td>
      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete this manufacturer</a></td>
    </tr>
  </c:forEach>
</table>
<input type="button" value="Add new manufacturer" onClick='location.href="http://localhost:8080/manufacturers/add"'>
</body>
</html>
