<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
<h1>Please fill in form below to create new driver:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver`s name <input type="text" name="name"><br>
    Driver license <input type="text" name="license number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
