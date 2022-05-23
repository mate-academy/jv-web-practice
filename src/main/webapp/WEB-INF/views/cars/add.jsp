<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>ADD DRIVER</title>
</head>
<body>
<h1>ADD DRIVER TO CAR USING THE FORM BELOW:</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver's id <input type="text" name="driver's_id"><br>
    Car id <input type="text" name="car_id"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
