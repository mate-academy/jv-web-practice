<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h1>Add new manufacterur</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers">
  Name <input type="text" name="name"><br>
  Country <input type="text" name="country"><br>
  <button type="submit">ADD</button>
</form>
</body>
</html>
