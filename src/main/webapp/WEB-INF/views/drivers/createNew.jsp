<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Please the form below</h1>
<form method="post" action="/drivers/add">
    Name driver <input type="text" name="name" required><br>
    License Number<input type="text" name="license_number" required><br>
    <input type="submit">
</form>
</body>
</html>
