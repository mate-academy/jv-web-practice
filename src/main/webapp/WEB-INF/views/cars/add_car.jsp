<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Please fill the form:</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Name <input type="text" required name="model"><br>
    Manufacturer id (from 1 to ${maxId})
    <input type="number" required name="id" min="1" max="${maxId}"> <br>
    <button type="submit">Save</button>
</form>
<br>
<a href="${pageContext.request.contextPath}/">Back to main</a>
</body>
</html>
