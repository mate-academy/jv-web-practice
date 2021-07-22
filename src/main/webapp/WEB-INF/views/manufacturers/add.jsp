<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Creating a manufacturer</title>
</head>
<body>
<h1>Please fill out the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name">
    Country <input type="text" name="country">
    <button type="submit">Create</button>
</form>
</body>
</html>
