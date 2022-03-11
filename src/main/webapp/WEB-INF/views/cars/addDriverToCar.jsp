<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please fill in all clear fields!</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/addDriverToCar">
    Car_id <input type="text" name="car_id"><br>
    Driver_id <input type="text" name="driver_id"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
