<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Cars</title>
</head>
<body>
<h1>Cars: </h1>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER</td>
    <td>DRIVERS</td>
    <td>DELETE</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.name} - ${car.manufacturer.country}" /></td>
      <td>
        <table>
          <c:forEach items="${car.drivers}" var="driver">
            <tr>
              <td><c:out value="${driver.name}" /></td>
              <td><c:out value="${driver.licenseNumber}" /></td>
            </tr>
          </c:forEach>
        </table>
      </td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
    </tr>
  </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/cars/add">create new car</a>
</body>
</html>