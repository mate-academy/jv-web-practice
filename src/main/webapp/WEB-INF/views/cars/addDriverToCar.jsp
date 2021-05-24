<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Enter data</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/addDriver">
    <label>Car id</label> <input type="text" name="car_id"><br>
    <label>Driver id</label> <input type="text" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
