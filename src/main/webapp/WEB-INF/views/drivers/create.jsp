<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/drivers/create">
        <label for="name">Name: </label><br>
        <input id ="name" name = "name" type="text" required><br>
        <label for="license_number">License number: </label><br>
        <input id = "license_number" name="license_number" type="text" required><br>
        <br>
        <button type="submit">Create driver</button>
    </form>
</body>
</html>
