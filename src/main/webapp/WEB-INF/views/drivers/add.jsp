<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Please the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver's name <input type="text" name="name"><br>
    Driver's license <input type="text" name="license"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
