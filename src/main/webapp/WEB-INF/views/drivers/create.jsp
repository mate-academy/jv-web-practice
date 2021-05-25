<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<h1>Please enter driver data</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name"><br>
    License # <input type="text" name="licenseNumber"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
