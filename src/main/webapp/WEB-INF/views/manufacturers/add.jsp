<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body><h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <label>Name</label><br>
    <label>
        <input type="text" name="name">
    </label><br>
    <label>Country</label><br>
    <label>
        <input type="text" name="country">
    </label><br>
    <button type="submit">Create manufacturer</button>
</form>
</h2>
</body>
</html>
