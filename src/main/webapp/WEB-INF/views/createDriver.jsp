<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Creating a driver</h1>
<form method="post" action="${pageContext.request.contextPath}/driver/create">
    Name <input type="text" name="name"><br>
    License number <input type="text" name="license_number">
    <button type="submit">CREATE</button>
</form>
</body>
</html>
