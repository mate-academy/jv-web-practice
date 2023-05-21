<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Manufacturers</title>
  <style>
    table, th, td {
      border: 1px solid black;
      border-collapse: collapse;
    }
  </style>
</head>
<body>
<a href="${pageContext.request.contextPath}/manufacturers/add"><h3>Add new manufacturer</h3></a>
<table>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Country</th>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td>
        <c:out value="${manufacturer.getId()}" />
      </td>
      <td>
        <c:out value="${manufacturer.getName()}" />
      </td>
      <td>
        <c:out value="${manufacturer.getCountry()}" />
      </td>
      <td>
        <form method="post" action="${pageContext.request.contextPath}/manufacturers/delete">
          <input type="hidden" name="id" value="${manufacturer.getId()}" />
          <button type="submit">delete this manufacturer</button>
        </form>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
