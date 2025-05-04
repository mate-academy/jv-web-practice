<html>
<head>
  <title>Create car</title>
</head>
<body>
<h1>Creating a new car</h1>
<p>Fill out the form below</p>

<form method="post" action="${pageContext.request.contextPath}/cars/create">
  Model <input type="text" name="model"><br>
  Manufacturer id <input type="text" name="manufacturer_id"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
