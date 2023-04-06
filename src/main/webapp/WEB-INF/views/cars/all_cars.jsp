<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CARS</title>
</head>
<body>

<br><br>

<a href="${pageContext.request.contextPath}/cars/create">
  <input type="button" value="Add new car" />
</a><br><br>

<table>
  <tr>
    <td>ID</td>
    <td>Model</td>
    <td>Manufacturer</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer}" /></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
