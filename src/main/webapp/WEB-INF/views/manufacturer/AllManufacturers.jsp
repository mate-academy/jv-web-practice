<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Manufacturer</title>
</head>
<body>
<table>
  <tr> <td>ID</td>
    <td>NAME</td>
    <td>  COUNTRY</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td> <c:out value="${manufacturer.id}" /></td>
      <td> <c:out value="${manufacturer.name}" /></td>
      <td> <c:out value="${manufacturer.country}" /></td>
    </tr>
  </c:forEach>
  <tr>
  </tr>
</table>
</body>
</html>
