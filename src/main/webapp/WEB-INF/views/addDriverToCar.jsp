<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<hi>Please fill out the form to add driver to car</hi>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    CarId <input type="text" name="cars_id"><br>
    DriverId <input type="text" name="drivers_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
