<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1> List of all cars: </h1>
<table>
  <tr>
    <td>ID</td>
    <td>Manufacturer</td>
    <td>Model</td>
    <td>Drivers</td>
  </tr>
  <c:forEach items="${cars}" var = "car">
    <tr>
      <td><c:out value="${car.id}"/> </td>
      <td><c:out value="${car.manufacturer.name}"/> </td>
      <td><c:out value="${car.model}"/> </td>
      <td>
        <table>
          <d:forEach items="${car.drivers}" var="driver">
            <tr>
              <td><d:out value="${driver.name}"/></td>
            </tr>
          </d:forEach>
        </table>
      </td>
    </tr>
  </c:forEach>
</table>
<a href="/cars/add">Add new car</a>
</body>
</html>
