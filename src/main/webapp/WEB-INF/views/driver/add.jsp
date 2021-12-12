<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating new driver</title>
</head>
<body>
<h1 align = "center">CREATE NEW DRIVER</h1>
<form align = "center" method = "post" action = "${pageContext.request.contextPath}/drivers/add">
    Name: <input type = "text" required name = "name"><br>
    <br>
    License_Number: <input type = "text" required name = "license_number"><br>
    <br>
    <button type = "submit">Confirm</button>
</form>
</body>
</html>
