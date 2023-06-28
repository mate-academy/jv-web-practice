<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Enter driver information</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="driver_name" required><br>
    License number <input type="text" name="license_number" required>
    <button type="submit">Create</button>
</form>
</body>
</html>
