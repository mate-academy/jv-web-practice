<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<h2>List of drivers:</h2>
<style>
  table {
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid black;
    padding: 10px;
    text-align: left;
  }
</style>
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>Licence number</td>
    <td>Action</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}" /></td>
      <td><c:out value="${driver.name}" /></td>
      <td><c:out value="${driver.licenseNumber}" /></td>
      <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete this driver</a></td>
    </tr>
  </c:forEach>    
</table>
</body>
</html>
