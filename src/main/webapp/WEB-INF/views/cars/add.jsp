<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creat car</title>
</head>
<body>
<h1>Taxi Service - Car creation</h1>
<h2>To create a new car, please, fulfill the form below:</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car model: <input type="text" name="model"><br>
    Manufacturer id: <input type="text" name="manufacturer_id"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
