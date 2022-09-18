<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a driver</title>
</head>
<body>
<h3>Fill the form to create a new driver.</h3>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="driver-name">
    License number <input type="text" name="driver-license-number">
    <button type="submit">Create driver</button>
</form>
</body>
</html>
