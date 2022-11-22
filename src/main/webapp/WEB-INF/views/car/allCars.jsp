<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>  
  <title>Get all Cars</title>
</head>
<body style="display:flex; flex-direction:column; justify-content:center; text-align: center">
  <h10><a style="text-decoration: none" href="${pageContext.request.contextPath}/menu">&#8592;Back to menu</a></h10>
  <h1>List of Cars:</h1>
<table border="4">
  <tr style="background-color: gray">
    <th style="width: 4%">ID</th>
    <th>MODEL</th>
    <th>MANUFACTURER</th>
    <th>DRIVERS</th>
    <th style="width: 2%; color: maroon">DELETE CAR</th>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr align="center">
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.name}" /></td>
      <td><c:out value="${car.drivers.toString()}" /><br></td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}" style="text-decoration: none"> DELETE </a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
