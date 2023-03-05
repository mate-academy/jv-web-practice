<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1> Manufacturers list </h1>
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>Country</td>
    <td>DELETE</td>
  </tr>
  <c:forEach items="${manufacturers}" var = "man">
    <tr>
      <td><c:out value = "${man.getId()}"/></td>
      <td><c:out value = "${man.getName()}"/></td>
      <td><c:out value = "${man.getCountry()}"/></td>
      <td><a href="${pageContext.request.contextPath}/manufacturer/delete?id=${man.getId()}"> Delete </a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
