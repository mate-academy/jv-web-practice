<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Enter manufacturers name and country</h1>
<h1> Create Manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Country <input type="text" name="country">
    Name <input type="text" name="name">
    <button type="submit">Save</button>
</form>
</body>
</html>
