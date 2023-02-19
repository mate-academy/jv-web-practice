
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>create manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    name <input type="text" name="name"><br>
    country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
