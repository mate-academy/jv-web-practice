<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add Manufacturer</title>
</head>
<body>
<h1>Please add a new Manufacturer to the database</h1><br>
<form method="post" action="${pageContext.request.contextPath}/manufacturer/add">
    Name <input type="text" name="nameManufacturer"><br>
    Country <input type="text" name="countryManufacturer"><br>
    <button type="submit">Add Manufacturer</button>
</form>
</body>
</html>
