<html>
<head>
  <title>Create driver</title>
</head>
<body>
<h1>Creating a new driver</h1>
<p>Fill out the form below</p>

<form method="post" action="${pageContext.request.contextPath}/drivers/create">
  Name <input type="text" name="name"><br>
  License number <input type="text" name="license_number"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
