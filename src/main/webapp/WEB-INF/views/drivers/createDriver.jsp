<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<h1>Form for creating a driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name: <input type="text" name="driver_name"><br>
    Driver license number: <input type="text" name="driver_license_number"><br>
    <button type="submit">Confirm</button>
</body>
</html>
