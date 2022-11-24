<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
    <h1>To add new driver - enter data below</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Name <input type="text" name="name" required><br>
        LicenseNumber <input type="text" name="licenseNumber" required><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
