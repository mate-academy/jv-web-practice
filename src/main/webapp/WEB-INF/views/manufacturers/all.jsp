<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All manufacturers</title>
</head>
<body>
<h4>All manufacturers</h4>
<table border="1">
  <tr>
    <td>Id</td>
    <td>Name</td>
    <td>Country</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.getId()}"/></td>
      <td><c:out value="${manufacturer.getName()}"/></td>
      <td><c:out value="${manufacturer.getCountry()}"/></td>
      <td>
        <a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.getId()}">
        Delete
        </a>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
