<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration a new car</title>
</head>
<body>
<h1>Input new car data</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car model: <input type="text" name="car_model"><br>
    Car manufacturer ID: <input type="text" name="car_manufacturer"><br>
    <button type="submit">confirm</button>
</form>
<h3><a href="${pageContext.request.contextPath}/index">Home page</a></h3>
</body>
</html>
