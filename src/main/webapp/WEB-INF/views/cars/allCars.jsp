<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>List of all cars</h1>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>
      <table>
        MANUFACTURER
        <tr>
          <td>ID</td>
          <td>NAME</td>
          <td>COUNTRY</td>
        </tr>
      </table>
    </td>
    <td>
      <table>
        DRIVERS
        <tr>
          <td>ID</td>
          <td>NAME</td>
          <td>LICENSE NUMBER</td>
        </tr>
      </table>
    </td>
    <td>DELETE</td>
  </tr>
    <c:forEach items="${cars}" var="car">
      <tr>
        <td><c:out value="${car.id}"/></td>
        <td><c:out value="${car.model}"/></td>
        <td>
          <table>
            <tr>
              <td><c:out value="${car.manufacturer.id}"/></td>
              <td><c:out value="${car.manufacturer.name}"/></td>
              <td><c:out value="${car.manufacturer.country}"/></td>
            </tr>
          </table>
        </td>
        <td>
          <table>
            <c:forEach items="${car.drivers}" var="driver">
              <tr>
                <td><c:out value="${driver.id}"/></td>
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
              </tr>
            </c:forEach>
          </table>
        </td>
        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}"/>Delete car</td>
      </tr>
    </c:forEach>
</table>
</body>
</html>
