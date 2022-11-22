<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating a driver</title>
</head>
<body>
<h1>Create a new driver:</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name">;
    License number <input type="text" name="licenseNumber">;
    <button type="submit">Create</button>
</form>
</body>
</html>
