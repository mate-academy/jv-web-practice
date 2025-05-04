<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Adding driver to the car</h1>
<p>Fill out the form below</p>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Driver id <input type="number" name="driver_id"><br>
  Car id <input type="number" name="car_id"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
