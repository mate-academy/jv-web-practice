<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Drivers</title>
  <style>
    table {
      border-collapse: collapse;
      width: 100%;
    }

    th, td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
  </style>
</head>
<body>
<h2>List of drivers:</h2>
<table>
  <tr>
    <td>Id</td>
    <td>Name</td>
    <td>License Number</td>
    <td>Delete</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}"/></td>
      <td><c:out value="${driver.name}"/></td>
      <td><c:out value="${driver.licenseNumber}"/></td>
      <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a> </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
