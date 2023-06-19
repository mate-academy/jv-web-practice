<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add driver to car</title>
</head>
<body>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/addDriver">

    Car ID <label>
    <input type="text" name="car_id">
</label>
    <br>

    Driver ID <label>
    <input type="text" name="driver_id">
</label>
    <br>

    <button type="submit">Confirm</button>
</form>
</body>
</html>
