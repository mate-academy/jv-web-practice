<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Enter information about new car:</h1>

<form method ="post" action="${pageContext.request.contextPath}/cars/createCar">
    Model <input type=text" name="model"><br>
    Manufacturer_id <input type=text" name= "manufacturer.id"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>