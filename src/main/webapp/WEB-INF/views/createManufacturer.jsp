<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Creating manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturer/create">
  Name <input type="text" name="name"><br>
  Country <input type="text" name="country">
  <button type="submit">CREATE</button>
</form>
</body>
</html>
