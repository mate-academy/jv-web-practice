<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}">
    Name <input type="text" name="model"><br>
    Manufacturer id <input type="number" name="manufacturer_id"><br>
    <button type="submit">Add</button>
    <h1></h1>
    <a type="button" href = "/drivers"> Show all drivers </a>
</form>
</body>
</html>
