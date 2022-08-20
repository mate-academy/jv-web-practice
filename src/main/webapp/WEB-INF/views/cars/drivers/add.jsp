<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<style>
    body {
        font-family: Helvetica, sans-serif;
        font-size: 12px;
        line-height: 16px;
    }
</style>
<body>
<h2>Add driver to car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id:<br>
    <input type="number" name="car_id"><br>
    Driver id:<br>
    <input type="number" name="driver_id"><br><br>
    <input type="submit" value="Add">
    <input type="reset">
</form>
</body>
</html>
