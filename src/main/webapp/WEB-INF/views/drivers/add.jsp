<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Please add driver information</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="driver_name">
    License <input type="text" name="license_number">
    <button type="submit">Save</button>
</form>
</body>
</html>
