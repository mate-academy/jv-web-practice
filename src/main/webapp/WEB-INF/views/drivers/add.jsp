<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
<h1>Please the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver's name <input type="text" name="driver_name"><br>
    License Number <input type="text" name="license_number"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
