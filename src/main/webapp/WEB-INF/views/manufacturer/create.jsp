<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Manufacturer creating</title>
</head>
<body>
<h1>Create a new manufacturer:</h1>
<form action="${pageContext.request.contextPath}/manufacturers/create" method="post">
  <label for="name">Manufacturer name:</label>
  <input type="text" id="name" name="name" required><br><br>
  <label for="country">Manufacturer country:</label>
  <input type="text" id="country" name="country" required><br><br>
  <input type="submit" value="Submit">
</form>
</body>
</html>
