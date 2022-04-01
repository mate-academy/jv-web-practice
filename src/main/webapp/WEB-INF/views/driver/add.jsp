<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new driver</title>
</head>
<body>
<h1>Add new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/add_driver">
    Driver's name <input type="text" name="driverName" required><br>
    License number <input type="number" name="licenseNumber" required><br>
    <button type="submit">Save</button>
</form>
</body>
</html>