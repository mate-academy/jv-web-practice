<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>All cars from database</title>
  <style>
    html * {
      font-size: 16px;
      line-height: 1.625;
      color: #000000;
      font-family: Nunito, sans-serif;
    }
  </style>
</head>
<body bgcolor="#ffd700">
<div align="center">
  <h3>CARS LIST</h3>
  <form action="<c:url value="/index"/>" >
    <input type="submit" value="HOME" />
  </form>
  <table style="with: 80%" border="1">
    <tr>
      <td>ID </td>
      <td> MODEL </td>
      <td> MAKER </td>
      <td> COUNTRY </td>
      <td> DRIVER </td>
      <td> DELETE</td>
    </tr>
    <c:forEach var="car" items="${cars}">
      <tr>
        <td>
          <c:out value="${car.id}"/>
        </td>
        <td>
          <c:out value="${car.model}"/>
        </td>
        <td>
          <c:out value="${car.manufacturer.name}"/>
        </td>
        <td>
          <c:out value="${car.manufacturer.country}"/>
        </td>
        <td>
          <c:forEach var="driver" items="${car.drivers}">
            ${driver.id} ${driver.name} ${driver.licenseNumber} <br>
          </c:forEach>
        </td>
        <td>
          <a href="${pageContext.request.contextPath}/cars/remove?id=${car.id}">DELETE</a>
        </td>
      </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>
