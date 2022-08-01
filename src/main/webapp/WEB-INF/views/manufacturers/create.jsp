<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    <label for="name">Name: </label><br>
    <input id ="name" name = "name" type="text" required><br>
    <label for="country">Country: </label><br>
    <input id = "country" name="country" type="text" required><br>
    <br>
    <button type="submit">Create manufacturer</button>
</form>
</body>
</html>
