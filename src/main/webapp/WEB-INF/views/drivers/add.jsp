<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Creation driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Name: <input type="text" name="name"><br>
  License Number: <input type="text" name="license_number"><br>
  <button type="submit">Creation</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">Main page</a></p>
</body>
</html>
