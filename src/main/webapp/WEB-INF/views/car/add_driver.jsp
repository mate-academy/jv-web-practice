<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Driver adding</title>
</head>
<body>
<h2><a href="http://localhost:8080/index">Main page</a></h2>
<h1>Please fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Driver Id <input type="number" required name="driver_id"><br>
  Car Id <input type="number" required name="car_id"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
