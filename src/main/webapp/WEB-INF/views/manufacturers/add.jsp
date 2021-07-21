<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath} add">
    name: <input type="text" name="name"><br>
    country: <input type="text" name="country"><br>
    <button type="submit">Create new manufacturer</button>
</form>
</body>
</html>
