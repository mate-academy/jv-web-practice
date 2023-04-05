<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to the car</title>
</head>
<body>
<h1>It`s a form for filling car with drivers</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver ID <input type="text" name="driver_id"><br>
    Car ID <input type="text" name="car_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>