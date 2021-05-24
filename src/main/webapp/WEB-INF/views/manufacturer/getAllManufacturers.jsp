<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<h1>All manufacturers in table:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>NAME</td>
    <td>COUNTRY</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.getId()}" /></td>
      <td><c:out value="${manufacturer.getName()}" /></td>
      <td><c:out value="${manufacturer.getCountry()}" /></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
