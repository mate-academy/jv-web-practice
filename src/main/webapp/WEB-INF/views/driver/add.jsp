<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Create driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name">
    License Number <input type="text" name="licenseNumber">
    <button type="submit">Add</button>
</form>
</body>
</html>
