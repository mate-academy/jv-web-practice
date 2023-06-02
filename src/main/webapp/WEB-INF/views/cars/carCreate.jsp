<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<form method="get" action="${pageContext.request.contextPath}/cars/all">
    <button type="submit"><--</button>
</form>
<h4>Create a Car</h4>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car Model <br><input type="text" name="Model"><br>
    Car Manufacturer Id <br><input type="number" name="ManufacturerId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
