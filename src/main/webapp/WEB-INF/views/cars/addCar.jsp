<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a car</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<a href="${pageContext.request.contextPath}/">Go to Action menu</a>
<h2>To add a car, please fill out the form below</h2>
<form action="${pageContext.request.contextPath}/cars/add" method="post">
    <label>
        Car model:
        <input type="text" name="model" required>
    </label><br><br>
    <label>
        Manufacturer id:
        <input type="number" name="manufacturer_id" min="1" required>
    </label><br><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>