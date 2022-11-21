<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add a new Manufacturer</title>
</head>
<body>
<h1>Fill out the given form</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Name <input type="text" name="name" required><br>
  Country <input type="text" name="country" required><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
