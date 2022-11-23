<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Creating a manufacturer</title>
</head>
<body>
<h1>Create a new manufacturer: </h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturer/create">
  Name <input type="text" name="name">;
  Country <input type="text" name="country">;
  <button type="submit">Create</button>
</form>
</body>
</html>
