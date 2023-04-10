<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title> Add driver to car </title>
</head>
<body>
<br>
<h1>
    Write car and driver ID:
</h1>
<br>
<br>
<form method="post" action="/cars/drivers/add">
    Car Id <label>
    <input type="text" name="car_id">
</label>
    <br>
    driver Id <label>
    <input type="text" name="driver_id">
</label>
    <br>
    <button type="submit">Submit</button>
</form>
</body>
</html>