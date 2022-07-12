<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Add driver to car</title>
</head>
<body>
<h1>Please, fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car ID<input type="text" name="car_id"><br>
  Driver ID<input type="text" name="driver_id"><br>
  <button type="submit">Confirm</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">Return to the main page </a></p>
</body>
</html>
