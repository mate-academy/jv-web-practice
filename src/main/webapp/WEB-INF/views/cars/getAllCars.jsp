<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Get All Carrs</title>
</head>
<body>
<h1>List of all Cars:</h1>
<table>
  <tr>
    <td><b>ID</b></td>
    <td><b>MODEL</b></td>
    <td><b>MANUFACTURER</b></td>
    <td><b>DRIVERS</b></td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.name}" /></td>
      <td><c:forEach items="${car.drivers}" var="driver">
          <c:out value="${driver.name} " />
      </c:forEach></td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}"/>REMOVE CAR</td>
    </tr>
  </c:forEach>
</table>
<br>
<form method="post" action="${pageContext.request.contextPath}/cars/all">
  <button type="submit">Get all Cars</button>
</form>

</body>
</html>
