<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating new driver</title>
</head>
<body>
<h1>Please fill new driver data</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name"><br>
    License Number <input type="text" name="licence_number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
