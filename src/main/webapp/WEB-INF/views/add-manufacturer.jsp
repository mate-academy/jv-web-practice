<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new manufacturer</title>
</head>
<body>
<h1>Fill out the form to add a manufacturer</h1>
<form action = "${pageContext.request.contextPath}/manufacturers/add" method = "POST">
    Name: <input type = "text" name = "name" required><br/>
    Country: <input type = "text" name = "country" required><br/>
    <button type = "submit">Confirm</button>
</form>
</body>
</html>
