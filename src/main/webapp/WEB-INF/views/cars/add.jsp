<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car register</title>
</head>
<body>
<h1>Register new car</h1>

<form method="post" name="${pageContext.request.contextPath}/car">
  Model <input type="text" name="model">
  Manufacturer id <input type="text" name="manufacture_id">
  <button type="submit">Save</button>
</form>
</body>
</html>
