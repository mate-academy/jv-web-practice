<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create new manufacturer</title>
</head>
<body>
<h2>Create new manufacturer</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
