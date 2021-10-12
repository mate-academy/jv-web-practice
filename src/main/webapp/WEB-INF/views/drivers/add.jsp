<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Yelinskyi</title>
</head>
<body>
<h1>Create new driver!</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver Name <input type="text" name="driver_name">
    License Number <input type="text" name="license_number">
    <button type="submit">Confirm</button>
</form>
</body>
</html>
