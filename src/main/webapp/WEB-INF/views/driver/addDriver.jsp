<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New driver registration</title>
</head>
<body>
<h1>Please enter a new driver data below:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/new">
    Driver name <input type="text" name="name"><br>
    Driver license number <input type="text" name="licenseNumber"><br>
    <button type="submit">Save data</button>
</form>
</body>
</html>
