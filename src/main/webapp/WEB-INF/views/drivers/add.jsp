<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Taxi Service - Driver creation</h1>
<h2>To create a new driver, please, fulfill the form below:</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name: <input type="text" name="driver_name"><br>
    License number: <input type="text" name="license_number"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
