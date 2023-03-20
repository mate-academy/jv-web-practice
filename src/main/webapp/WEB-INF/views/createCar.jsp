<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Creating a Car</h1>
<form method="post" action="${pageContext.request.contextPath}/car/create">
    Model <input type="text" name="model"><br>
    Manufacturer id <input type="number" name="manufacturer_id"><br>
    <a href="${pageContext.request.contextPath}/manufacturers">AVAILABLE MANUFACTURERS</a><br><br>
    <button type="submit">CREATE</button>
</form>
</body>
</html>
