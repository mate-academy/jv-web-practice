<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car registration</title>
</head>
<body>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car's model <input type="text" name="carModel"><br>
    Car's manufacturer_id <input type="text" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
