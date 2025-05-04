<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h1>Create a new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    <label for="model">Model:</label><br>
    <input type="text" id="model" name="model"><br>
    <label for="manufacturer_id">Manufacturer id:</label><br>
    <input type="text" id="manufacturer_id" name="manufacturer_id"><br><br>
    <button type="submit">Create car</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">main page</a> </p>
</body>
</html>
