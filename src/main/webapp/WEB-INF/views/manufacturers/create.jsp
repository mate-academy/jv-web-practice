<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create New Manufacturer</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/">Home</a>
<h1>Manufacturer creation form</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
