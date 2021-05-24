<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Add</button>
    <h1></h1>
    <a type="button" href = "/drivers/show-all-drivers"> Show all drivers </a>
</form>
</body>
</html>
