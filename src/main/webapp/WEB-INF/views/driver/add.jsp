<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating new driver</title>
</head>
<body>
<h1 align = "center">Input information about new driver :</h1>
<form align = "center" method = "post" action = "${pageContext.request.contextPath}/drivers/add">
    Name : <input type = "text" required name = "name"><br>
    <br>
    License Number : <input type = "text" required name = "licenseNumber"><br>
    <br>
    <button type = "submit">Confirm</button>
</form>
</body>
</html>
