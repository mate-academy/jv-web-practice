<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<%@include file="../headers/mainHeader.jsp"%>
<body>
<h1>List of manufacturers:</h1>
<table>
  <tr>
    <th>ID</th>
    <th>NAME</th>
    <th>COUNTRY</th>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}"/></td>
      <td><c:out value="${manufacturer.name}"/></td>
      <td><c:out value="${manufacturer.country}"/></td>
      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
        Delete</a>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>