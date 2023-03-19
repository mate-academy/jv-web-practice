<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2><a href="/index">Go to index</a></h2>
<h1>All drivers here</h1>
<table border="1" style="font-size: 25px">
  <tr>
    <td>Id</td>
    <td>Model</td>
    <td>Manufacturer</td>
    <td>Drivers</td>
    <td>Delete</td>

  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.name}" /></td>

      <td>
        <c:if test="${car.drivers.size() == 0}"> No drivers </c:if>
        <c:if test="${car.drivers.size() != 0}">
        <table border="1" style="font-size: 25px">
          <c:forEach items="${car.drivers}" var="drivers">
          <tr>
            <td><c:out value="${drivers.name}" /></td>
            <td><c:out value="${drivers.licenseNumber}" /></td>
          </tr>
          </c:forEach>


      </table>
        </c:if>
        </td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}"> Click to delete this car </a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
