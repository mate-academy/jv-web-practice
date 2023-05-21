<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Delete driver</title>
</head>
<body>
<h1>Enter driver id:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/delete">
    Driver id <input type="text" name="driver_id">
    <button type="submit">Delete</button>
</form>
<a href="${pageContext.request.contextPath}/drivers/all">Look at all drivers list</a><br>
<a href="${pageContext.request.contextPath}/">Back to main page</a><br>
</body>
</html>
