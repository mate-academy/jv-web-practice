<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create Manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturer/add">
  Manufacturer:  <input type="text" name="name"><br>
  Country: <input type="text" name="country"><br>
  <button type="submit">Create</button>
</form>
</body>
</html>
