<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer: <input type="text" name="name"><br>
    Country: <input type="text" name="country"><br>
    <button type="submit">Create manufacturer</button>
</form>
</body>
</html>
