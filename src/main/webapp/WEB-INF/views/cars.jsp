<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER</td>
    <td>DRIVERS</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.name} - ${car.manufacturer.country}" /></td>
      <td>
        <table>
          <d:forEach items="${car.drivers}" var="driver">
            <tr>
              <td><d:out value="${driver.name} - ${driver.licenseNumber}" /></td>
            </tr>
          </d:forEach>
        </table>
      </td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
    </tr>
  </c:forEach>
</table>

</body>
</html>
