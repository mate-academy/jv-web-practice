<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}">
    Name <input type="text" name="name"><br>
    License Number <input type="number" name="license_number"><br>
    <button type="submit">Add</button>
    <h1></h1>
    <a type="button" href = "/drivers"> Show all drivers </a>
</form>
</body>
</html>
