<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New manufacturer</title>
</head>
<body>
<h2>Adding new manufacturer</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name: <input type="text" name="name" required><br>
    Country of origin: <input type="text" name="country" required><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
