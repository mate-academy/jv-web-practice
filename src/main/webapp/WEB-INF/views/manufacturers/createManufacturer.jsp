<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Let's create new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturer/create">
  Name <input type="text" name="name"><br>
  Country <input type="text" name="country"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
