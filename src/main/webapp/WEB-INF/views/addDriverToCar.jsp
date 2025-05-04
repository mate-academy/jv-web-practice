<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="includes/header.jsp" %>
<%@include file="includes/mainmenu.jsp" %>
<table>
  <h1>Add driver to car </h1>
  <table>
    <tr>
      <td>id</td>
      <td>name</td>
      <td>manufacturer</td>
      <td>country</td>

    </tr>
    <tr>
      <td>${car.id}</td>
      <td>${car.model}</td>
      <td>${car.manufacturer.name}</td>
      <td>${car.manufacturer.country}</td>
    </tr>
  </table>
<hr>
  <table>
  <tr>
    <td>id</td>
    <td>name</td>
    <td>licensenumber</td>
    <td></td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}"/></td>
      <td><c:out value="${driver.name}"/></td>
      <td><c:out value="${driver.licenseNumber}"/></td>
      <td>
        <form method="post">
        <input type="hidden" name="driver_id" value="${driver.id}">
        <input type="hidden" name="car_id" value="${car.id}">
        <input type="submit" value="Add driver">
        </form>
      </td>
    </tr>
  </c:forEach>
</table>
<%@include file="includes/footer.jsp" %>
