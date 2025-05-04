<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<table>
  <tr>
    <td>Id</td>
    <td>Name</td>
    <td>Country</td>
    <td>Delete</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}" /></td>
      <td><c:out value="${manufacturer.name}" /></td>
      <td><c:out value="${manufacturer.country}" /></td>
      <td><a href="${pageContext.request.contexPath}manufactirers/delete?id=${manufacturer.id}">Delete this manufacturer</a> </td>
    </tr>
  </c:forEach>
</table>

</body>
</html>
