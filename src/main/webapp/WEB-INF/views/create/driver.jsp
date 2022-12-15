<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Create driver</title>
  </head>
  <body>
    <h2><i>Fill the form below</i></h2>
    <form method="post" action="${pageContext.request.contextPath}/create/driver">
      Name <input type="text" name="driver_name"> <br>
      License number <input type="text" name="license_number"> <br>
      <button type="submit">Create driver</button>
    </form>
  </body>
</html>
