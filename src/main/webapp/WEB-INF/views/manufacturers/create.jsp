<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register new manufacturer.</title>
</head>
<body>
<h1>Register new manufacturer.</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Manufacturer <input type="text" name="manufacturer"><br>
    country <input type="text" name="country"><br>
    <button type="submit">Send</button>
</form>
</body>
</html>
