<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New manufacturer</title>
</head>
<body>
<h1>Creat new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/new_manufacturer">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
