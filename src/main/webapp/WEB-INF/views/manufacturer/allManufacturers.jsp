<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>  
  <title>Get all drivers</title>
</head>
<body style="display:flex; flex-direction:column; justify-content:center; text-align: center">
  <h10><a style="text-decoration: none" href="${pageContext.request.contextPath}/menu">&#8592;Back to menu</a></h10>
  <h1>List of Manufacturers:</h1>
<table border="4">
  <tr style="background-color: gray">
    <th style="width: 4%">ID</th>
    <th>NAME</th>
    <th>COUNTRY</th>
    <th style="width: 2%; color: maroon">DELETE MANUFACTURER</th>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr align="center">
      <td><c:out value="${manufacturer.id}" /></td>
      <td><c:out value="${manufacturer.name}" /></td>
      <td><c:out value="${manufacturer.country}" /></td>
      <td><a href="${pageContext.request.contextPath}/manufacturer/delete?id=${manufacturer.id}" style="text-decoration: none"> DELETE </a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
