<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h2>Please fill the form below to add driver:</h2>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <label>
        Car ID
        <input type="number" name="car_id" checked required>
    </label><br>
    <label>
        Driver ID
        <input type="number" name="driver_id" checked required>
    </label><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
