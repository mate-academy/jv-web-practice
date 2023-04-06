<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Manufacturers</title>
</head>
<body>
  <h1>All manufacturers</h1>
  <table>
      <tr>
          <td>ID</td>
          <td>MODEL</td>
          <td>MANUFACTURER</td>
          <td>DRIVERS</td>
          <td>DELETE</td>
      </tr>
      <c:forEach items="${allManufacturers}" var="manufacturer">
          <tr>
              <td><c:out value="${manufacturer.id}" /></td>
              <td><c:out value="${manufacturer.name}" /></td>
              <td><c:out value="${manufacturer.country}" /></td>
              <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete</a></td>
          </tr>
      </c:forEach>
  </table>
</body>
</html>
