<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add car</title>
</head>
<body>
<h1>Please the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Car model <input type="text" name="model"><br>
  Car manufacturer_id<input type="text" name="manufacturer_id"> Choose id from the list of manufacturers<br>
  <button type="submit">Create</button>
</form>
<table>
  <tr>
    <td>ID</td>
    <td>MANUFACTURER</td>
    <td>COUNTRY</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}" /></td>
      <td><c:out value="${manufacturer.name}" /></td>
      <td><c:out value="${manufacturer.country}" /></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>