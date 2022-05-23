<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<h1>Please create Driver</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="driver_name"><br>
    License Number <input type="text" name="driver_license_number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
