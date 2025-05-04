<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Create driver</title>
</head>

<body>
<h2>Create driver</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    <label for="driver_name">Name</label><br>
    <input type="text" id="driver_name" name="driver_name"><br>
    <label for="license_number">License number</label><br>
    <input type="text" id="license_number" name="license_number"><br><br>
    <input type="submit" value="Save">
    <input type="button" value="Return" onclick="history.back()">
</form>
</body>
</html>
