<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Delete manufacturer</title>
</head>
<body>
<h1>Enter manufacturer id:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/delete">
    Manufacturer id <input type="text" name="manufacturer_id"><br>
    <button type="submit">Delete</button>
</form>
<a href="${pageContext.request.contextPath}/manufacturers/all">Look at all manufacturers list</a><br>
<a href="${pageContext.request.contextPath}/">Back to main page</a><br>
</body>
</html>
