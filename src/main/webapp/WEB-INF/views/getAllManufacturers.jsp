<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Adding Driver</title>
</head>
<body>
<h1>List of Drivers!</h1>
<table>
  <tr>
    <td>ID</td>
    <td>LICENSE NUMBER</td>
    <td>NAME</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}"></c:out></td>
      <td><c:out value="${manufacturer.name}"></c:out></td>
      <td><c:out value="${manufacturer.country}"></c:out></td>
      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?manufacturerId=${manufacturer.id}">Delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
