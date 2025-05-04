<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create</title>
</head>
<body>
<h1>Please the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/createCar">
    Car model <input type="text" name="model"><br>
    Manufacturer id <input type="text" name="manufacturer.id">
    <button type="submit">Confirm</button>
</form>
</body>
</html>
