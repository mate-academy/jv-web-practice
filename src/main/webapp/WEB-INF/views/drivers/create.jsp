<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a driver</title>
</head>
<h1>Fill the form for creating driver</h1>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name"><br>
    Driver license number <input type="text" name="license_number"><br>
    <button type="submit">Create a driver</button>
</form>
</body>
</html>
