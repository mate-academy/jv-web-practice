<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver</title>
</head>
<body>
<h1>Please fill out the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Driver Id <input type="text" name="driver_id"><br>
    Car Id <input type="text" name="car_id"><br>
    <button type="submit">Add driver</button>
</form>
</body>
</html>
