<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Create manufacturer</h1>
<form method="POST" action="${pageContext.request.contextPath}/manufacturers/add">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br><br>
    <label for="country">Country:</label>
    <input type="text" id="country" name="country" required><br><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
