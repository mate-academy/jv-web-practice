<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver To Car</title>
</head>
<body>
<h1>Add driver to car</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <br>Car_id <label>
        <input type="number" name="car_id">
    </label><br>
    <br>Driver_id <label>
        <input type="number" name="driver_id">
    </label><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
