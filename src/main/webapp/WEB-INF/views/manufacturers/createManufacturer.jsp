<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Please fill out the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Manufacturer name<input type="text" name="name"><br>
    Manufacturer country<input type="text" name="country"><br>
    <button type="submit">Create manufacturer</button>
</form>
</body>
</html>
