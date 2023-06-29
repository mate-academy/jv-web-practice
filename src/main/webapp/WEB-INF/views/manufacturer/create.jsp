<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Enter manufacturer information</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="manufacturer_name" required><br>
    Country <input type="text" name="country">
    <button type="submit">Create</button>
</form>
</body>
</html>
