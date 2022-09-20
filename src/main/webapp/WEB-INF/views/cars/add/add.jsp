<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add new car</title>
</head>
<body>
<h1>Fill in the information about the new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Model <input type="text" name="model"><br>
  Manufacturer ID <input type="text" name="id_manufacturer"><br>
  <button type="submit">Submit</button>
</form>
<br>
<a href="${pageContext.request.contextPath}/">Back to home</a>
</body>
</html>
