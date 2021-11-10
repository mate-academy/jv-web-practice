<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver creating</title>
</head>
<body>
<h1>Please the form bellow</h1>
<form method ="post" action="${pageContext.request.contextPath}/drivers/create">
    Driver name <input type="text" name="driver_name"><br>
    LicenseNumber  <input type="text" name="licenseNumber"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
