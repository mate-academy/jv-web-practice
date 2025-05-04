<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Creation car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Model: <input type="text" name="model"><br>
  Manufacturer: <input type="text" name="manufacturer_id"><br>
  <button type="submit">Creation</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">Main page</a></p>
</body>
</html>
