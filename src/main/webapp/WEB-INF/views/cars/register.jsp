<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
  <head>
      <meta charset="UTF-8">
      <link href="${pageContext.request.contextPath}/resources/css/bulma.min.css" rel="stylesheet" type="text/css">
      <title>Car registration</title>
  </head>
  <body>
    <div class="columns">
      <div class="column is-5 is-offset-1">
        <h1 class="title">To register a car fill the form:</h1>
        <form class="box" method="post" action="${pageContext.request.contextPath}/cars/register">
          <div class="field">
            <label class="label">Model</label>
            <div class="control">
              <input class="input" type="text" placeholder="Model" name="model">
            </div>
          </div>
          <label class="label">Manufacturer</label>
          <div class="select">
            <div class="select">
            <select name="manufacturer">
                  <c:forEach var="manufacturer" items="${manufacturers}">
                    <option value="${manufacturer.id}">${manufacturer.name}</option>
                  </c:forEach>
            </select>
            </div>
          </div>
          <button class="button is-primary" type="submit">Register</button>
        </form>
        <a href="${pageContext.request.contextPath}/index">Main page</a>
      </div>
    </div>
  </body>
</html>