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
    <td>ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER</td>
    <td>COUNTRY</td>
    <td>NAME & LN</td>
    <td>ACTION</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.name}" /></td>
      <td><c:out value="${car.manufacturer.country}" /></td>
      <c:forEach items="${car.drivers}" var="driver">
        <td> <c:out value="${driver.name}"/>
          <c:out value="${driver.licenseNumber}"/>
        </td>
      </c:forEach>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
        Delete this user
      </a>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
