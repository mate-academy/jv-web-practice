<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a driver</title>
</head>
<body>
<h1>Fill the fields below</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Name <input type="text" name="name"><br>
  License number <input type="text" name="driving_license"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
