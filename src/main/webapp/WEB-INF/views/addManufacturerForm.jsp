<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/index">Home</a>
<h1>New manufacturer:</h1>
<form method="post" action="/manufacturers/add">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Add</button>
</form>
<a href="/manufacturers">back to car manufacturers</a>
</body>
</html>
