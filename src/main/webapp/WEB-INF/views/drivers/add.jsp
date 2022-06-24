<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add driver</title>
</head>
<body>
<h1>Type new driver below</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Name <input type="text" name="name"><br>
  License_Number <input type="text" name="license_number"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
