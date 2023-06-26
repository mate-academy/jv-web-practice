<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add driver</title>
</head>
<body>
  <h1>To add a new driver, please fill out the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Driver name <input type="text" name="name" required><br>
  License number <input type="text" name="license_number" required><br>
  <button type="submit">Add</button>
</form>
</body>
</html>
