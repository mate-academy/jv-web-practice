<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create driver</title>
</head>
<body>
<h1>Please add new driver</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  <label>Name:</label><br>
  <input type="text" name="name"><br>
  <label>License number :</label><br>
  <input type="text" name="license_number"><br>
  <button type="submit">Add</button><br><br><br>
</form>
<a href="${pageContext.request.contextPath}/drivers/all">Back to all drivers</a><br>
<a href="${pageContext.request.contextPath}/">Back to main page</a>
</body>
</html>
