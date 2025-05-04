<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Car</title>
</head>
<body>
<h1>Please the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Car Model <input type="text" name="carModel"><br>
  Car Manufacturer <input type="text" name="carManufacturer"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
