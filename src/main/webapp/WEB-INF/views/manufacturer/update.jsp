<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Update Manufacturer</title>
</head>
<body>
<h1>Please enter your data:</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturer/update">
  Manufacturer id <input type="text" name="Id"><br>
  Manufacturer name <input type="text" name="Manufacturer name"><br>
  Manufacturer Number <input type="tetx" name="Manufacturer country"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
