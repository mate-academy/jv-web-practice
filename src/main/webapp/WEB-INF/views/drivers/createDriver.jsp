<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
    <h2>Create driver</h2>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" required><br>
        <label for="licenseNumber">License number:</label><br>
        <input type="text" id="licenseNumber" name="licenseNumber" required>
        <br>
        <button type="submit">Create new driver</button>
    </form>
</body>
</html>
