<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All drivers</title>
</head>
<body>
<h1>All manufacturers List:</h1>
<table>
  <tr>
    <td>Id</td>
    <td>Name</td>
    <td>Country</td>
    <td>Delete</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>

      <td><c:out value="${manufacturer.id}" /></td>
      <td><c:out value="${manufacturer.name}" /></td>
      <td><c:out value="${manufacturer.country}" /></td>
      <td><form method="post" action="${pageContext.request.contextPath}/delete?id=${manufacturer.id}&class=manufacturer">
        <button type="submit">delete</button>
      </form>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
