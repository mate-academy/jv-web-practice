<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/creatingCar">
    Model <input type="text" name="model"><br/>
    Manufacturer ID <input type="text" name="manufacturer_id"><br/>
    <button type="submit">Create a car</button>
</form>
</body>
</html>
