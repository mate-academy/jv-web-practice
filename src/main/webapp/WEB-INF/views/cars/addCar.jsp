<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Create car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model: <input type="text" name="model" required><br>
    Manufacturer id: <input type="number" name="manufacturer_id" required><br>
    <button type="submit">CREATE</button>
</form>
</body>
</html>
