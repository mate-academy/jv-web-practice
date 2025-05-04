<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<form method="POST" action="${pageContext.request.contextPath}/drivers/create">
    Name: <input type="text" name="name"><br>
    License Number: <input type="text" name="licenseNumber"><br>
    <button type="submit">Create Driver</button>
</form>
</body>
</html>
