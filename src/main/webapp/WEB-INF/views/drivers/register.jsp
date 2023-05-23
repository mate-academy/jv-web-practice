<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<h1>Please fill the form below to register new driver</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/register">
    Name <input type="text" name="name"><br>
    License Number <input type="text" name="license_number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
