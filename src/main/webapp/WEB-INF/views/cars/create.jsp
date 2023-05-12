<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Create car</title>
</head>
<body>
<h1> Fill out the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car model<input type="text" name="car_model"><br>
    Manufacturer ID<input type="text" name="manufacturer_id"><br>
    <button type="submit"> Confirm</button>
</form>
</body>
</html>
