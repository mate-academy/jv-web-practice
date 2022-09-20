<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All Cars</title>
</head>
<body>
<h1>List of Cars</h1>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER ID</td>
    <td>DRIVERS</td>
    <td>DELETE</td>
    <form action="${pageContext.request.contextPath}/">
      <input type="submit" value="Main page">
    </form>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}"/></td>
      <td><c:out value="${car.model}"/></td>
      <td><c:out value="${car.manufacturer}"/></td>
      <td><c:out value="${car.drivers}"/></td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a></td>
    </tr>
  </c:forEach>
  <form action="${pageContext.request.contextPath}/cars/add">
    <input type="submit" value="Add a new Car">
  </form>
</table>
</body>
</html>
