<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
<body>
<form method="POST" action="${pageContext.request.contextPath}/manufacturers/create">
    Name: <input type="text" name="name"><br>
    Country: <input type="text" name="country"><br>
    <button type="submit">Create Manufacturer</button>
</form>
</body>
</html>
