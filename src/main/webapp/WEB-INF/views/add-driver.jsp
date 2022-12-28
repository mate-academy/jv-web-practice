<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new driver</title>
</head>
<body>
<h1>Fill out the form to add a driver</h1>
<form action = "${pageContext.request.contextPath}/drivers/add" method = "POST">
    Name: <input type = "text" name = "name" required><br/>
    License Number: <input type = "text" name = "license_number" required><br/>
    <button type = "submit">Confirm</button>
</form>
</body>
</html>
