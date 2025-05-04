<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Delete driver from car</title>
</head>
<body>
<h1>Delete driver from car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/delete">
  Car id = <input type="text" name="car_id"><br>
  Driver id = <input type="text" name="driver_id"><br>
  <button type="submit">Confirm</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">Return to main page</a></p>
</body>
</html>
