<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All manufacturers</title>
</head>
<body>
<table border="1" cellspacing="0" cellpadding="10">
  <caption>All drivers</caption>
  <tr>
    <th>Id</th>
    <th>Name</th>
    <th>Country</th>
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
