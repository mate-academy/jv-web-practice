<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<p><a href="${pageContext.request.contextPath}/index">To main page</a></p>
<h3>Create a new car:</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    <label for="model">Model:</label><br>
    <input type="text" id="model" name="model" required><br>
    <br>
    <label for="manufacturer">Manufacturer id:</label><br>
    <input type="number" id="manufacturer" name="manufacturer_id" required><br>
    <br>
    <br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
