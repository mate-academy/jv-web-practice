<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add driver</title>
</head>
<body>
<h1>creating a driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name"><br>
    License Number <input type="text" name="licenseNumber"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
