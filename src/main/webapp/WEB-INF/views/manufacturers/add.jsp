<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create</title>
</head>
<body>
<h1>Create a new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Id <input type="text" name="id"><br>
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
