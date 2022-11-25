<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Add driver to car</title>
</head>
<body>
<h1>Adding driver to car Form</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car id <label>
  <input type="text" name="car_id">
</label><br>
  Driver id <label>
  <input type="text" name="driver_id">
</label><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
