<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
  <style>
    .button-link {
      display: inline-block;
      padding: 4px 6px;
      background-color: #0045b3;
      color: #fff;
      text-decoration: none;
      border-radius: 4px;
      border: none;
      cursor: pointer;
    }

    .button-link:hover {
      background-color: #0078b3;
    }
  </style>
</head>
<body>
<h1>List of drivers:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>NAME</td>
    <td>LICENSE</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}" /></td>
      <td><c:out value="${driver.name}" /></td>
      <td><c:out value="${driver.licenseNumber}" /></td>
      <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}" class="button-link">DELETE</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
