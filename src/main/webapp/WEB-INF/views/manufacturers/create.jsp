<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Create a manufacturer</title>
</head>
<body>
<h1>Parameters</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
  Name <input type="text" name="name"><br>
  Country <input type="text" name="country"><br>
  <button type="submit">Create</button>
</form>
</body>
</html>
