<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new car</title>
</head>
<body>
<h1>Please the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car's model <input type="text" name="model"><br>
    Manufacturer's ID <input type="number" name="manufacturer_id">
    <button type="submit">Create</button>
</form>
</body>
</html>
