<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create manufacturer</title>
</head>
<body>
<h1>Please add new manufacturer</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  <label>Name:</label><br>
  <input type="text" name="name"><br>
  <label>Country:</label><br>
  <input type="text" name="country"><br>
  <button type="submit">Add</button><br><br><br>
</form>
<a href="${pageContext.request.contextPath}/manufacturers/all">Back to all manufacturers</a><br>
<a href="${pageContext.request.contextPath}/">Back to main page</a>
</body>
</html>
