<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Country</td>
        <td>Delete</td>
    </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
      <tr>
          <td><c:out value="${manufacturer.id}"></c:out></td>
          <td><c:out value="${manufacturer.name}"></c:out></td>
          <td><c:out value="${manufacturer.country}"></c:out></td>
          <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">Delete</a></td>
      </tr>
  </c:forEach>
</table>
</body>
</html>
