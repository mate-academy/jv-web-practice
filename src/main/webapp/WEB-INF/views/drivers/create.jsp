<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Please fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="driverName"><br>
    License number <input type="number" name="driverLicense" minlength="6"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
