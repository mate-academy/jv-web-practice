<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
  <h1>Manufacturers:</h1>
  <table>
    <td>ID</td>
    <td>Name</td>
    <td>Country</td>
      <c:forEach items="${manufacturers}" var="manufacturer">
          <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">Delete this manufacturer</a></td>
          </tr>
      </c:forEach>
  </table>
</body>
</html>
