<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Cars</title>
</head>
<body>
<h1>List of cars</h1>
<table>
  <tr>
    <td>CAR_ID</td>
    <td>MODEL</td>
    <td>MAKER</td>
    <td>COUNTRY</td>
    <td>DRIVER_NAME</td>
    <td>LICENSE</td>
    <td>DELETE</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}"/></td>
      <td><c:out value="${car.model}"/></td>
      <td><c:out value="${car.manufacturer.name}"/></td>
      <td><c:out value="${car.manufacturer.country}"/></td>
      <td><c:out value="${car.getAllDriverNames()}"/></td>
      <td><c:out value="${car.getAllDriverLicenses()}"/></td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete car</a> </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
