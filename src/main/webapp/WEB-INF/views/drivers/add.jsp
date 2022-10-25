<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add drivers</title>
</head>
<body>
<h1>Please enter drivers information</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Name <input type="text" required name="name"><br>
  License number <input type="text" required name="licenseNumber"><br>
  <button type="submit">Add new driver</button>
</form>
</body>
</html>
