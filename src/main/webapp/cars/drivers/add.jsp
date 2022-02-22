<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Adding new driver to car in database</h1>
<h2>Fill the fields below</h2>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    car ID <input type="text" name="carId"><br>
    driver ID <input type="text" name="driverId"><br>
    <button type="submit">Confirm</button>
</form>
<h1>${message}</h1>
</body>
</html>
