<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Please the form below to register new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name"><br>
    License number <input type="text" name="license_number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>