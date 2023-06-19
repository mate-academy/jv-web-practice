<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>
    <title>Adding a new manufacturer</title>
</head>
<body>
<h1>Register a new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
