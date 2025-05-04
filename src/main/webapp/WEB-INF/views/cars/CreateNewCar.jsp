<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Create new car</h1>
<form method = "post" action="${pageContext.request.contextPath}/cars/add">
  Model <input type="text" name="model"><br>
  Manufacturer <input type="number" name="manufacturer_id"><br>
  <button type = 'submit'>Confirm and submit</button>
</form>

<h1>Add driver to car</h1>
<form method = "post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car id <input type="number" name="car_id"><br>
  Driver id <input type="number" name="driver_id"><br>
  <button type = 'submit'>Confirm and submit</button>
</form>
  <a href="${pageContext.request.contextPath}/index">return to home page</a><br>
</body>
</html>
