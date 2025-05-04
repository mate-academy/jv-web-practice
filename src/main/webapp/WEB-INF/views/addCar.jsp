<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a new Car</title>
</head>
<body>
<h2>Registration form for new Car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label for="model">Model:</label><br>
    <input type="text" id="model" name="model"><br>
    <label for="manufacturer_id">Manufacturer ID:</label><br>
    <input type="number" id="manufacturer_id" name="manufacturer_id"><br><br>
    <input type="submit" value="REGISTER">
</form>
</body>
</html>
