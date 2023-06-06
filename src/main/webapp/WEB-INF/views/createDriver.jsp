<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New driver</title>
</head>
<body>
<h2>Adding new driver</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver's name: <input type="text" name="name" required><br>
    License number: <input type="text" name="license_number" required><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
