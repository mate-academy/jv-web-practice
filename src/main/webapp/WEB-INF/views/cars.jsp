<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <title>Cars</title>
  </head>
  <body>
  <h1>Drivers:</h1>
    <table>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Drivers</td>
        <c:forEach items="${cars}" var="car">
          <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer}"/></td>
            <td><c:out value="${car.drivers}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete this car</a></td>
          </tr>
        </c:forEach>
    </table>
  </body>
</html>
