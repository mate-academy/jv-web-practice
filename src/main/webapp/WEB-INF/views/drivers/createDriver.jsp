<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Please fill out the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Driver name<input type="text" name="name"><br>
    License number<input type="password" name="licenseNumber"><br>
    <button type="submit">Create driver</button>
</form>
</body>
</html>
