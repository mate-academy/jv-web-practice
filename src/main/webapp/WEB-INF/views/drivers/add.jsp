<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver</title>
</head>
<body>
<h1>Please the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Driver Name <input type="text" name="driverName"><br>
  License ID <input type="text" name="driverLicenseId"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
