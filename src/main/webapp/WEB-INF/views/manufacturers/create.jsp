<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create manufacturer</title>
</head>
<body>
<h1> Need more manufacturers!</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">create new manufacturer</button>
</form>
</body>
</html>
