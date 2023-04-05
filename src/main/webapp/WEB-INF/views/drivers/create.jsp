<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create driver</title>
</head>
<body>
<h1> Where is my driver?</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name"><br>
    License number <input type="text" name="licenseNumber"><br>
    <button type="submit">create new driver</button>
</form>
</body>
</html>
