<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name" required><br>
    License number <input type="number" name="license-number" required>
    <button type="submit">Create</button>
</form>
</body>
</html>
