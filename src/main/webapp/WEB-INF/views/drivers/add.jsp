<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
<h1>Please phil the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver`s name <input type="text" name="name"><br>
    Driver`s license number <input type="text" name="license_number">
    <button type="Submit">Confirm</button>
</form>
</body>
</html>
