<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to the car</title>
</head>
<body>
<h1>Add driver to the car</h1>
<h4 style="color: green">${message}</h4>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <label>
        <input type="number" name="driver_id" placeholder="Driver id">
        <input type="number" name="car_id" placeholder="Car id">
    </label>
    <button type="submit">Add</button>
</form>
</body>
</html>
