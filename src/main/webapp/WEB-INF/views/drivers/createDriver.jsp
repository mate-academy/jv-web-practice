
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>create Driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  name <input type="text" name="name"><br>
  license number <input type="number" name="licenseNumber"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
