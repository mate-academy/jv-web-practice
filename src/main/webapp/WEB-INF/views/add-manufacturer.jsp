<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding manufacturer</title>
</head>
<body>
<h1>Fill all fields for manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/add-manufacturer">
    Name: <input type="text" name="name"><br>
    Country: <input type="text" name="country"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
