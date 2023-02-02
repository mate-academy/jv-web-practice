<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
<body>
<h1>Please, fill the form below:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Manufacturer Name <input type="text", name="name"><br>
    Manufacturer Country <input type="text", name="country"><br>
    <button type="submit">Create!</button>
</form>
</body>
</html>
