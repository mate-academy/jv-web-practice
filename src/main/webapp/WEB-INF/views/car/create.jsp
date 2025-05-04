<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating a car</title>
</head>
<body>
<h1>Create a new car:</h1>

<form method="post" action="${pageContext.request.contextPath}/car/create">
    Model <input type="text" name="model">;
    Manufacturer <input type="number" name="manufacturer_id">;
    <button type="submit">Create</button>
</form>
</body>
</html>
