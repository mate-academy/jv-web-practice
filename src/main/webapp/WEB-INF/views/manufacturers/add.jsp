<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add manufacturer</title>
</head>
<body>
<h1>Create Manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Create</button>
</form>
<br/>
<a href="${pageContext.request.contextPath}/main">Back to main page</a>
</body>
</html>
