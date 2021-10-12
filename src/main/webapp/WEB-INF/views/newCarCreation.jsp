<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new car</title>
</head>
<body>
<h1>Please fill in form below to create new car:</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car name <input type="text" name="model"><br>
    Car manufacturer`s id <input type="text" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
