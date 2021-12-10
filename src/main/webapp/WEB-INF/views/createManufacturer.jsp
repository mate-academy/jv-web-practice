<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create new manufacturer</title>
</head>
<body>
<h1>Enter manufacturer requirements below:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name<label>
    <input type="text" name="name">
</label><br>
    Country<label>
    <input type="text" name="country">
</label><br>
    <button type="submit">Create</button>
</form>
</body>
</html>