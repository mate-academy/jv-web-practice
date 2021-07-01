<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create new Driver</title>
</head>
<body>
<h1>Fill the form below to create a new Driver</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Driver's name <input type="text" name="driver_name"><br>
    License number <input type="text" name="license_number"><br>
    <button name="submit">Create a Driver</button>
</form>
</body>
</html>
