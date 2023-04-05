<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating a car</title>
</head>
<body>
<h1 style="text-align:center;">Hello!</h1>
<h2 style="text-align:center;">If you want to create a new car, please fill the next form:</h2>

<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car model: <input type="text" name="model"><br>
    Car manufacturer id: <input type="text" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>