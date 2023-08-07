<%@ page contentType="text/html;charset=UTF-8"  %>
<html>
<head>
    <title>Creating a driver</title>
</head>
<body>
<h1>Please the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    name <input type="text" name="name">
    <br>
    licenseNumber <input type="text" name="licenseNumber">
    <br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
