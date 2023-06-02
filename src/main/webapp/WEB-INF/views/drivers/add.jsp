<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Driver information:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Driver name=<input type="text" name="name"><br>
  License number=<input type="text" name="licenseNumber"><br>
  <button type="submit">Add driver</button>
</form>
</body>
</html>
