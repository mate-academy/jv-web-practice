<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating a driver</title>
</head>
<body>
<h1 style="text-align:center;">Hello!</h1>
<h2 style="text-align:center;">If you want to create a new driver, please fill the next form:</h2>

<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Driver name: <input type="text" name="name"><br>
    Driver license number: <input type="text" name="license_number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>