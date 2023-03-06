<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Create new car</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<h1>Create new car</h1>
<form action="${pageContext.request.contextPath}/cars/add" method="post">
  <label for="model">Model:</label>
  <input type="text" id="model" name="model" required><br>
  <label for="manufacturer_id">Manufacturer ID:</label>
  <input type="text" id="manufacturer_id" name="manufacturer_id" required><br>
  <button type="submit">Create</button>
</form>
</body>
</html>
