<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <style>
    h1, table, th, td {
      border: 1px solid black;
      margin-left: auto;
      margin-right: auto;
      border-collapse: collapse;
      width: 500px;
      text-align: center;
      font-size: 20px;
    }
  </style>
</head>
<head>
  <title>Get all manufacturers </title>
</head>
<body>
<h1>List of manufacturers</h1>
<table>
  <tr>
    <td>ID</td>
    <td>NAME</td>
    <td>COUNTRY</td>
    <td>DELETE</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}" /></td>
      <td><c:out value="${manufacturer.name}" /></td>
      <td><c:out value="${manufacturer.country}" /></td>
      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
