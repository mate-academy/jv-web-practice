<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    manufacturer <input type="text" name="name"><br>
    manufacturer country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
