<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Car Creating</title>
</head>
<body>
<h1>Please fill in the form</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Model <input type="text" name="model" required><br>
  Manufacturer_id <input type="text" name="manufacturer_id" required><br>
  <button type="submit">Confirm</button>
</form>
<h1>List of manufacturers:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>Country</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}"/></td>
      <td><c:out value="${manufacturer.name}"/></td>
      <td><c:out value="${manufacturer.country}"/></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
