<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h1>Please write your data</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name<br><input type="text" name="name"><br>
    Country<br><input type="text" name="country"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
