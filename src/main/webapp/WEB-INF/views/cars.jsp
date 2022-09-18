<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>All cars</h1>
<table>
  <tr>
    <td><h3>ID</h3></td>
    <td><h3>Manufacturer</h3></td>
    <td><h3>Model</h3></td>
    <td><h3>Drivers</h3></td>
    <td><h3>Delete</h3></td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.name}" /></td>
      <td><c:if test="${car.getDrivers().size() == 0}"><c:out value="no driver" /></c:if>
    <c:forEach items="${car.drivers}" var="driver">
      <table>
      <tr>
        <td><c:out value="${driver.id}" /></td>
        <td><c:out value="${driver.name}" /></td>
      </tr></table>
    </c:forEach>
    </td>
      <td><a href = "${pageContext.request.contextPath}/cars/delete?id=${car.id}"><button TYPE="submit">Delete</button></a></td>
    </tr>
  </c:forEach>
</table>
<br>
<a href = "${pageContext.request.contextPath}/index"><button TYPE="submit">Back</button></a>
</body>
</html>
