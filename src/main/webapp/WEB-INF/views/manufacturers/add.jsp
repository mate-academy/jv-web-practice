<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add manufacturer</title>
</head>
<body>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Name <input type="text" required name="name"><br>
  Country <input type="text" required name="country"><br>
  <button type="submit">Add</button>
</form>
</body>
</html>
