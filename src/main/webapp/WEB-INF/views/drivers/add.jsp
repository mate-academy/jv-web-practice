<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register driver</title>
</head>
<body>
<h1>Please fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="driver_name" required><br>
    License Number <input type="text" name="license_number" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
