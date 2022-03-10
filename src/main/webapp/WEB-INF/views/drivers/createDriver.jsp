<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Please fill all fields!</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/createDriver">
    Name <input type="text" name="driver_name"><br>
    LicenseNumber <input type="text" name="license_number"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>