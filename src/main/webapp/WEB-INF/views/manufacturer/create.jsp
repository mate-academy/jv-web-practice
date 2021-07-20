<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer page</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturer/create">
    Manufacturer's name: <input type="text" name="name"><br>
    Manufacturer's country: <input type="text" name="country"><br>
    <button type="submit">Create new manufacturer</button>
</form>
</body>
</html>
