<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Please the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/addDriver">
    Driver id <input type="text" name="driver.id">
    Car id <input type="text" name="car.id">
    <button type="submit">Confirm</button>
</form>
</body>
</html>
