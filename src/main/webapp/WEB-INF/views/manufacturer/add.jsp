<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Enter manufacturer's info</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="name" required><br>
    Country <input type="text" name="country" required="required"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
