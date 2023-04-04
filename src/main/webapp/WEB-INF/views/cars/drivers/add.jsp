<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Adding driver to the car</title>
</head>
<body>
<h1>Hi. Fill out the form to add a driver to the car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver ID <input type="text" name="driverId"><br>
    Car ID <input type="text" name="carId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
