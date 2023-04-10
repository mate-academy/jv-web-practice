<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
  <head>
      <meta charset="UTF-8">
      <link href="${pageContext.request.contextPath}/resources/css/bulma.min.css" rel="stylesheet" type="text/css">
      <title>Driver registration</title>
  </head>
  <body>
    <div class="columns">
      <div class="column is-5 is-offset-1">
        <h1 class="title">To register a driver fill the form:</h1>
        <form class="box" method="post" action="${pageContext.request.contextPath}/drivers/register">
          <div class="field">
            <label class="label">Driver name</label>
            <div class="control">
              <input class="input" type="text" placeholder="Driver name" name="driverName">
            </div>
          </div>
          <div class="field">
            <label class="label">License number</label>
            <div class="control">
              <input class="input" type="text" placeholder="license number" name="licenseNumber">
            </div>
          </div>
          <button class="button is-primary" type="submit">Register</button>
        </form>
        <a href="${pageContext.request.contextPath}/index">Main page</a>
      </div>
    </div>
  </body>
</html>