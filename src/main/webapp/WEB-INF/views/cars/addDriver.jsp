<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car by id</title>
</head>
<body>
<h1>please the form below:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/addDriver">
    Driver ID <input type="number" name="driver_id"><br>
    Car ID <input type="number" name="car_id"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
