<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h2>Create manufacturer</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <label for="name">Name:</label><br>
    <input type="text" id="name" name="name" required><br>
    <label for="country">Country:</label><br>
    <input type="text" id="country" name="country" required>
    <br>
    <button type="submit">Create new manufacturer</button>
</form>
</body>
</html>
