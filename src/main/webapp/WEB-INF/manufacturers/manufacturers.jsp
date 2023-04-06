<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Create manufacturer</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="manufacturer_name"><br>
    Country <input type="text" name="country">
    <button type="submit">Confirm</button>
</form>
</body>
</html>
