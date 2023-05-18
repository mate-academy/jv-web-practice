<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
<h1>Enter driver data:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name"><br>
    License number <input type="text" name="license_number"><br>
    <button type="submit">Create</button>
</form>
<a href="${pageContext.request.contextPath}/drivers/all">Look at all drivers list</a><br>
<a href="${pageContext.request.contextPath}">Back to main page</a><br>
</body>
</html>
