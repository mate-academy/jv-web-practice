
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car page</title>
</head>
<body>

<h2>Create a car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label for="model">Model:</label>
    <input type="text" id="model" name="model" required>
    <br>
    <label for="manufacturer_id">Manufacturer id:</label>
    <input type="number" id="manufacturer_id" name="manufacturer_id" required>
    <br>
    <input type="submit" value="Confirm">
</form>
</body>
</html>
