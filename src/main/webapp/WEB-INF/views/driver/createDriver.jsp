<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>    Please fill form </h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name    <input type="text" name="Name"><br>
    License <input type="text" name="License"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
