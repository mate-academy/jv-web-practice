<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Creation manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Name: <input type="text" name="name"><br>
  Country: <input type="text" name="country"><br>
  <button type="submit">Creation</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">Main page</a></p>
</body>
</html>
