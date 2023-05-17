<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Delete Driver</title>
</head>
<body>
<h1>Please enter your id:</h1>

<form method="post" action="${pageContext.request.contextPath}/driver/delete">
  Driver id <input type="text" name="Id"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
