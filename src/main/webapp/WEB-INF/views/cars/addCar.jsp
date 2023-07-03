<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Car</title>
</head>
<body>
<h1>Add new Car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car model <input type="text" name="model"><br>
    Manufacturer Id <input type="text" name="manufacturer_id"><br>
    <button type="submit">Add new car</button>
</form>
</body>
</html>
