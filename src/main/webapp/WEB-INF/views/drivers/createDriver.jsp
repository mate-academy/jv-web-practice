<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new driver</title>
</head>
<body>
<div style="align-content: center">
    <h3>Fill the form:</h3>
    <form method="POST" action="${pageContext.request.contextPath}/drivers/create">
        <label for="model">Model:</label><br>
        <input type="text" id="model" name="model" required><br>
        <label for="licenseNumber">License number:</label><br>
        <input type="text" id="licenseNumber" name="licenseNumber" required><br>
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>
