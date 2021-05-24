<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturer</title>
</head>
<body>
<h3>List of manufacturer</h3>
<table border="1">
    <td>id</td>
    <td>name</td>
    <td>country</td>
    <td>delete</td>
    <c:forEach items="${manufacturers}" var ="manufacturer">
      <tr>
          <td><c:out value="${manufacturer.id}"/></td>
          <td><c:out value="${manufacturer.name}"/></td>
          <td><c:out value="${manufacturer.country}"/></td>
          <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
              deleted this manufacturer </a></td>
      </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/manufacturers/create"> manufacturer create </a>
</body>
</html>
