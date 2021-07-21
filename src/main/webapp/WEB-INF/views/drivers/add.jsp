<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>create a driver</title>
</head>
<body>
<h1>Please fill all fields and press ENTER button</h1>
<form action="${pageContext.request.contextPath}/drivers/add" method="post">
    Name <input type="text" name="driver_name"><br>
    License Number <input type="text" name="driver_license_number"><br>
    <button type="submit">ENTER</button>
</form>
</body>
</html>
