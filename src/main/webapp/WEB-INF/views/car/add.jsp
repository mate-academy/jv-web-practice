<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating new car</title>
</head>
<body>
<h1 align = "center">CREATE NEW CAR</h1>
<form align = "center" method = "post" action = "${pageContext.request.contextPath}/cars/add">
    Model: <input type = "text" required name = "model"><br>
    <br>
    Manufacturer_ID: <input type = "number" required name = "manufacturer_id"><br>
    <br>
    <button type = "submit">Confirm</button>
</form>
</body>
</html>
