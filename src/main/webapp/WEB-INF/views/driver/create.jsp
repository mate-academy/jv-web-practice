<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Create new driver</title>
</head>
<body>
<h1>Please, input relevant information</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Driver`s name <input type="text" name="name"><br>
    Driver`s license number <input type="text" name="license_number"><br>
    <button type="Submit">Confirm</button>
</form>
</body>
</html>
