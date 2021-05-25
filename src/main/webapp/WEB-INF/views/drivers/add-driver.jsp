<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
  <h1>Fill out the form to add a new driver</h1>
  <form method="post", action=${pageContext.request.contextPath}/drivers/add>
      Name <input type="text" name="name"><br>
      Licence number <input type="text" name="licence_number"><br>
      <button type="submit">CREATE</button>
  </form>
</body>
</html>
