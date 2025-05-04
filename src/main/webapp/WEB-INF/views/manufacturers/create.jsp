<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Create a new manufacturer:</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Manufacturer name <input type="text" name="name" required>
    Manufacturer country <input type="text" name="country" required><br>
    <button type="submit">Confirm</button>
</form>
<a href="${contentType.request.contextPath}/index">Back to menu</a>
</body>
</html>
