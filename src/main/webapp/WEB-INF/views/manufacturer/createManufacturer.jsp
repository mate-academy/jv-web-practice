<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create manufacturer</title>
</head>
<body>
<h1>Fill out this form</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Name <input type="text" name="manufacturerName"><br>
  Country <input type="text" name="country"><br>
  <button type="submit">Add manufacturer</button>
</form>
</body>
</html>
