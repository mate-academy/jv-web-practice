<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturer/registration">
    Name <input type="text" name="name"><br>
    Country<input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
