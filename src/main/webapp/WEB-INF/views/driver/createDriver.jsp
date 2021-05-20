<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Create new driver</title>
  </head>
  <body>
    <h1>Please, fill out the form below:</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
      name <input type="text" name="name" required><br>
      license number <input type="text" name="license_number" required><br>
      <button type="submit">create</button>
    </form>
  </body>
</html>
