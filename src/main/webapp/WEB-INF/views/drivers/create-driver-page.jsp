<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CREATE DRIVER</title>
</head>
<body>
<h1>CREATE DRIVER USING THE FORM BELOW:</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name"><br>
    License number <input type="text" name="licenseNumber"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
