<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add driver to a car</title>
</head>
<body>
<h1>Please fill up the form bellow</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car <input type="text" name="car"><br>
  Driver <input type="text" name="driver"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
