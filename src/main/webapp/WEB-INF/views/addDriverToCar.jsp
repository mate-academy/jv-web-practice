<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding driver to car</title>
</head>
<body>
<h1>Fill the form</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id : <input type="text" name="car_id">
    Driver id: <input type="text" name="driver_id">
    <button type="submit">confirm</button>
</form>
</body>
</html>
