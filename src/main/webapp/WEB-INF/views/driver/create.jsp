<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Driver</title>
</head>
<body>
<h1>Create your Driver:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver Name <input type="text" name="DriverName"><br>
    License Number <input type="text" name="LicenseNumber"><br>
    <button type="submit">Create Driver</button>
</form>

</body>
</html>
