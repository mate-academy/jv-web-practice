<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car model <input type="text" name="model" required><br>
    Car's manufacturer ID <input type="number" name="manufacturer_id" required><br>
</form>
</body>
</html>
