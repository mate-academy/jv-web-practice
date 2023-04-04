<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All drivers</title>
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
    <td>LICENSE NUMBER</td>
    <td>DELETE</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}" /></td>
      <td><c:out value="${driver.name}" /></td>
      <td><c:out value="${driver.licenseNumber}" /></td>
      <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete this</a> </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
