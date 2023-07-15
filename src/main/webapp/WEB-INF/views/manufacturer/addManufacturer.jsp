<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Create a manufacturer:</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="manufacturer_name"><br>
    Country <input type="text" name="manufacturer_country"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
