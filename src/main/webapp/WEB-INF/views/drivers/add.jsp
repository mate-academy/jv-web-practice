<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Please create Driver</title>
</head>
<body>
<h1>Please create Driver</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  name <input type="text" name="name"><br>
  license_number <input type="text" name="license_number"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
