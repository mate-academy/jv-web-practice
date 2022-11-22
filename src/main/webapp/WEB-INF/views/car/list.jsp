<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Get all cars</title>
  <style>
    body {
      text-size-adjust: 100%;
      box-sizing: border-box;
      margin: 5px;
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
      font-size: 14px;
      line-height: 1.5;
      color: rgb(36, 41, 46);
      background-color: rgb(255, 255, 255);
    }
  </style>
</head>
<body>
<h3>List of cars:</h3>
<table>
  <tr>
    <td>id</td>
    <td>model</td>
    <td>manufacturer</td>
    <td>drivers</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}"/></td>
      <td><c:out value="${car.model}"/></td>
      <td><c:out value="${car.manufacturer.name}"/></td>
      <td>
      <c:forEach items="${car.drivers}" var="driver">
          <td><c:out value="${driver.name}"/></td>
      </c:forEach>
      </td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
