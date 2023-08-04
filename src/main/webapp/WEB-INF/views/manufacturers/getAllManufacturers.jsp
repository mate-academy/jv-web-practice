<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Get All Manufacturers</title>
</head>
<body>
<h1>List of all Manufacturers:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>NAME</td>
    <td>COUNTRY</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}" /></td>
      <td><c:out value="${manufacturer.name}" /></td>
      <td><c:out value="${manufacturer.country}" /></td>
      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}"/>
        delete manufacturer </td>
    </tr>
  </c:forEach>
</table>
<br>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/all">
  <button type="submit">Get all Manufacturer</button>
</form>

</body>
</html>
