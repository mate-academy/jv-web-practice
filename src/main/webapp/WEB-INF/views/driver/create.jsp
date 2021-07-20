<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver page</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/driver/create">
    Driver's name: <input type="text" name="driver_name"><br>
    Driver's license number: <input type="text" name="license_number"><br>
    <button type="submit">Create new driver</button>
</form>
</body>
</html>
