<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
<body>
  <h1>Create manufacturer</h1>
  <form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    <p>Name: <input type="text" name="name"></p>
    <p>Country <input type="text" name="country"></p>
    <button type="submit">Create!</button>
  </form>
</body>
</html>
