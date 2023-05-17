<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Manufacturer</title>
</head>
<body>
<h1>Please enter manufacturer id</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturer/delete">
    Manufacturer id <input type="text" name="Id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
