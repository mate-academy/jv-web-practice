<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add new driver to car</title>
</head>
<body>
    <h1>Please fill the form below</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Car id <input type="number" name="car_id"><br>
        Driver id <input type="number" name="driver_id"><br>
        <button type="submit">Confirm</button>
    </form>
    <br>
    <a href="${pageContext.request.contextPath}/">Back to main page</a>
</body>
</html>
