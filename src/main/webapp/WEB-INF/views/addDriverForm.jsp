<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/index">Home</a>
<h1>New driver:</h1>
<form method="post" action="/drivers/add">
    Name <input type="text" name="name"><br>
    License <input type="text" name="license"><br>
    <button type="submit">Add</button>
</form>
<a href="/drivers">back to drivers</a>
</body>
</html>
