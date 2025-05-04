<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All Cars</title>
</head>
<body>
  <h1>All cars</h1>
  <table>
      <tr>
          <td>ID</td>
          <td>MODEL</td>
          <td>MANUFACTURER</td>
          <td>DRIVERS</td>
          <td>DELETE</td>
      </tr>
      <c:forEach items="${allCars}" var="car">
          <tr>
              <td><c:out value="${car.id}" /></td>
              <td><c:out value="${car.model}" /></td>
              <td><c:out value="${car.manufacturer.toString()}" /></td>
              <td><c:out value="${car.getDrivers()}" /></td>
              <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
          </tr>
      </c:forEach>
  </table>
</body>
</html>
