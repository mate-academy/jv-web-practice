<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Adding Manufacturer</title>
</head>
<body>
<h1>Hello, mates!</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Manufacturer Name <input type="text" name="manufacturerName">
  Manufacturer Country <input type="text" name="manufacturerCountry">
  <button type="submit">Post</button>
</form>

</body>
</html>
