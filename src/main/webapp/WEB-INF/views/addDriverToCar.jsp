<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Adding Driver</title>
</head>
<body>
<h1>Hello, mates!</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Driver License Number <input type="text" name="driverLicenseNumber">
  Driver Name <input type="text" name="driverName">
  Car Id <input type="text" name="carId">
  <button type="submit">Post</button>
</form>

</body>
</html>
