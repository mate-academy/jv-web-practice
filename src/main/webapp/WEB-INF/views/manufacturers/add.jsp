<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Create a manufacturer</title>
</head>
<body>
<h1>Creating a manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Manufacturer name: <input type="text" name="name"><br>
  Manufacturer country: <input type="text" name="country"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
