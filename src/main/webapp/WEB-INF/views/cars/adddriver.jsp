<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
  <head>
      <meta charset="UTF-8">
      <link href="${pageContext.request.contextPath}/resources/css/bulma.min.css" rel="stylesheet" type="text/css">
      <title>Add a driver to the car</title>
  </head>
  <body>
    <div class="columns">
      <div class="column is-5 is-offset-1">
        <h1 class="title">Add a driver to the car:</h1>
        <form class="box" method="post" action="${pageContext.request.contextPath}/cars/adddriver">
          <div class="field">
            <label class="label" >Car</label>
          <div class="select">
            <select name="car">
                <option value="${car.id}">id:${car.id} ${car.model} ${car.manufacturer.name}</option>
            </select>
          </div>
          </div>
          <label class="label">Driver</label>
          <div class="select">
            <select name="driver">
                  <c:forEach var="driver" items="${drivers}">
                    <option value="${driver.id}">${driver.name}</option>
                  </c:forEach>
            </select>
          </div>
          <button class="button is-primary" type="submit">Register</button>
        </form>
        <a href="${pageContext.request.contextPath}/index">Main page</a>
      </div>
    </div>
  </body>
</html>