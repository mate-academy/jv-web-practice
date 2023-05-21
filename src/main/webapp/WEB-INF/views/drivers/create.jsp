<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
    <h2>Create driver</h2><br>
    <form method="post" action="${pageContext.request.contextPath}/drivers/create">
        DriverName <input type="text" name="driverName"><br><br>
        LicenseNumber <input type="text" name="licenseNumber"><br><br>
        <button type="submit">Create</button>
    </form>
</body>
</html>
