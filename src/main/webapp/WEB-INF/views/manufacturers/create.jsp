<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create new manufacturer</title>
</head>
<body>
<h1>Enter manufacturer data:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Create</button>
</form>
<a href="${pageContext.request.contextPath}/manufacturers/all">Look at all manufacturers list</a><br>
<a href="${pageContext.request.contextPath}/">Back to main page</a><br>
</body>
</html>
