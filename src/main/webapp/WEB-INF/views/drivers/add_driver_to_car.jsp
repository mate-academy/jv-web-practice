<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please enter parameters to add driver to car</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Car id <input type="number" name="carId"><br>
    Driver id <input type="number" name="driverId"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
