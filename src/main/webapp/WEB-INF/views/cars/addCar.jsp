<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car Registration</title>
</head>
<body>
<h1>Please fill the car registration form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car model <input type="text" name="model" required><br>
    Manufacturer id <input type="number" name="manufacturer_id" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
