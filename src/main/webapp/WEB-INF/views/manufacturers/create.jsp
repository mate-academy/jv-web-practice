<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
    <h1>Create new manufacturer</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
        <label>Name</label><br>
        <input type="text" name="name"><br>
        <label>Country</label><br>
        <input type="text" name="country"><br>
        <button type="submit">Create manufacturer</button>
    </form>
</body>
</html>
