<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Please fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car's id <input type="number" name="carId"><br>
    Driver's id <input type="number" name="driverId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
