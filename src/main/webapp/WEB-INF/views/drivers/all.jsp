<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>  
  <title>Get all drivers</title>
</head>
<body style="display:flex; flex-direction:column; justify-content:center; text-align: center">
  <h10><a style="text-decoration: none" href="${pageContext.request.contextPath}/menu">&#8592;Back to menu</a></h10>
  <h1>List of drivers:</h1>
<table border="4">
  <tr style="background-color: gray">
    <th style="width: 4%">ID</th>
    <th>NAME</th>
    <th>LICENSE NUMBER</th>
    <th style="width: 2%; color: maroon">DELETE DRIVER</th>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr align="center">
      <td><c:out value="${driver.id}" /></td>
      <td><c:out value="${driver.name}" /></td>
      <td><c:out value="${driver.licenseNumber}" /></td>
      <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}" style="text-decoration: none"> DELETE </a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
