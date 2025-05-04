<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please, fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver's id <br><input type="number" name="driver_id" min="1" required><br>
    Car's id <br><input type="number" name="car_id" min="1" required><br><br>
    <button type="submit" onclick="alert('If you will have an exclamation message '
    + 'driver won\'t be added to car')">Add driver to car</button>
    <button type="reset">Cancel</button>
</form>
<a href="${pageContext.request.contextPath}/">Back to main</a>
</body>
</html>
