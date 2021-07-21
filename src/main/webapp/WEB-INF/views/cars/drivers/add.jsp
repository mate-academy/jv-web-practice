<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding driver to car</title>
</head>
<body>
<h1>Please fill the fields:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id <input type="text" name="car_id"><br>
    Driver id <input type="text" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
