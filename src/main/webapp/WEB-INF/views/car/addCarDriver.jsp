<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please enter information about car and driver</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car ID <input type="number" name="car_id" required><br>
    Driver ID <input type="number" name="driver_id" required><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
