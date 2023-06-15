<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Add driver to Car</title>
</head>
<body>
    <h1>Please, fill the fields about driver id and car id</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Driver ID <input type="text" name="driver_id" required><br>
        Car ID <input type="text" name="car_id" required><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
