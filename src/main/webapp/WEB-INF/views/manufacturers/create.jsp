<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a manufacturer</title>
</head>
<body>
    <h1>Add manufacturer to database</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Manufacturer name <input type="text" name="name"><br>
    Manufacturer country <input type="text" name="country"><br>
    <button type="submit">Add</button>
</form>
    <a href="${pageContext.request.contextPath}/index">Back to home</a>
</body>
</html>
