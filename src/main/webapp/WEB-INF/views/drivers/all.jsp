<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ger all drivers</title>
</head>
<body>
<h1>List of drivers</h1>
<table>
  <tr>
    <td>ID</td>
    <td>NAME</td>
    <td>LICENSE NUMBER</td>
  </tr>
  <c:forEach items="${drivers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}" /></td>
      <td><c:out value="${manufacturer.name}" /></td>
      <td><c:out value="${manufacturer.licenseNumber}" /></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
