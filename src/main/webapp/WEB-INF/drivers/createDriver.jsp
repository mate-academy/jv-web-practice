<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Enter a new driver parameters</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/createDriver">
    Name <input type="text" name="name"><br/>
    License <input type="text" name="license"><br/>
    <button type="submit">Send</button>
</form>
</body>
</html>
