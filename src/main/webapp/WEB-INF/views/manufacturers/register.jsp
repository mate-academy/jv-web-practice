<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
  <head>
      <meta charset="UTF-8">
      <link href="${pageContext.request.contextPath}/resources/css/bulma.min.css" rel="stylesheet" type="text/css">
      <title>Manufacturer registration</title>
  </head>
  <body>
    <div class="columns">
      <div class="column is-5 is-offset-1">
        <h1 class="title">To register a manufacturer fill the form:</h1>
        <form class="box" method="post" action="${pageContext.request.contextPath}/manufacturers/register">
          <div class="field">
            <label class="label">Manufacturer name</label>
            <div class="control">
              <input class="input" type="text" placeholder="Manufacturer name" name="name">
            </div>
          </div>
          <div class="field">
            <label class="label">Country</label>
            <div class="control">
              <input class="input" type="text" placeholder="Country" name="country">
            </div>
          </div>
          <button class="button is-primary" type="submit">Register</button>
        </form>
        <a href="${pageContext.request.contextPath}/index">Main page</a>
      </div>
    </div>
  </body>
</html>