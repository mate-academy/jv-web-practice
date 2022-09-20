<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All manufacturers</title>
</head>
<body>
<table>
  <tr>
    <td><h3>Id</h3></td>
    <td><h3>Name</h3></td>
    <td><h3>Country</h3></td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}" /></td>
      <td><c:out value="${manufacturer.name}" /></td>
      <td><c:out value="${manufacturer.country}" /></td>
      <td>
        <a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer
                .getId()}"><button>delete this manufacturer</button></a>
      </td>
    </tr>
  </c:forEach>
  <form action="${pageContext.request.contextPath}/manufacturers/add">
    <input type="submit" value="Add new Manufacturer">
  </form>
</table>
</body>
</html>
