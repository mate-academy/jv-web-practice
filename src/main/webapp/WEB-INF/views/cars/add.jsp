<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>To add a car fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" required name="model"><br>
    Manufacturer ID <input type="number" required name="manufacturer_id"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
