<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Create:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/addDriverToCar">
    Driver id <input type="number" name="driver_id"><br>
    Car id <input type="number" name="car_id"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
