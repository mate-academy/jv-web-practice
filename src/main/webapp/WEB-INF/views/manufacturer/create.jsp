<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create Manufacturer</title>
</head>
<body>
<h1>Please enter your data</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturer/create">
  Manufacturer name <input type="text" name="Manufacturer name"><br>
  Country <input type="tetx" name="Country"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
