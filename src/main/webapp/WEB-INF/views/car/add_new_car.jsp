<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new car</title>
</head>
<body>
<h1>For add new Driver fill in the forms below</h1>
<form method="post" action="${pageContext.request.contextPath}/car/add">
    Model <input type="text" name="model"><br>
    Manufacturer's id <input type="number" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
