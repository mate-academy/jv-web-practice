<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers table</title>
</head>
<body>
<h3>Manufacturers</h3>
<table>
  <tr>
    <td><b>ID</b></td>
    <td><b>NAME</b></td>
    <td><b>COUNTRY</b></td>
    <td><b>DELETE</b></td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}"/></td>
      <td><c:out value="${manufacturer.name}"/></td>
      <td><c:out value="${manufacturer.country}"/></td>
      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">Delete</a></td>
    </tr>
  </c:forEach>
</table>

</body>
</html>
