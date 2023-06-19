<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Get all manufacturers</title>
</head>
<body>
<h1>List of manufacturers:</h1>
<table>
  <tr>
    <td>id</td>
    <td>name</td>
    <td>country</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturers">
    <tr>
      <td><c:out value="${manufacturers.id}"/></td>
      <td><c:out value="${manufacturers.name}"/></td>
      <td><c:out value="${manufacturers.country}"/></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
