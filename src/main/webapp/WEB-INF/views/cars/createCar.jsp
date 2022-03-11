<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Please fill in all clear fields!</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/createCar">
    Model <input type="text" name="model"><br>
    Manufacturer_id <input type="text" name="manufacturer_id"><br>
    <button type="submit">Create</button>
</form>

</body>
</html>
