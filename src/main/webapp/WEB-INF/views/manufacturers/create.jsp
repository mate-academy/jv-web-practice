<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Enter data</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    <label>Name</label> <input type="text" name="name"><br>
    <label>Country</label> <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
