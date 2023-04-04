<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<style>
  table {
    border-collapse: collapse;
  }
  td {
    border: 1px solid black;
    padding: 5px;
  }
  th {
    border: 1px solid black;
    padding: 5px;
    font-weight: bold;
    text-align: center;
  }
</style>
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
      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete this</a> </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
