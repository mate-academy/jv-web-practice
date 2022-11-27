<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Car's List</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
  <tr>
    <td>CAR ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER ID</td>
    <td>DRIVER ID</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
    <c:if test="${fn:length(car.drivers) != 0}">
      <c:forEach items="${car.drivers}" var="driver">
        <tr>
        <td><c:out value="${car.id}" /></td>
        <td><c:out value="${car.model}" /></td>
        <td><c:out value="${car.manufacturer.id}" /></td>
        <td><c:out value="${driver.id}" /></td>
          <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete car</a></td>
        </tr>
      </c:forEach>
    </c:if>
      <c:if test="${fn:length(car.drivers) == 0}">
        <td><c:out value="${car.id}" /></td>
        <td><c:out value="${car.model}" /></td>
        <td><c:out value="${car.manufacturer.id}" /></td>
        <td>null</td>
        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete car</a></td>
      </c:if>
    </tr>
  </c:forEach>
</table>
</body>
</html>
