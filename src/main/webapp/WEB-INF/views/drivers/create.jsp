<%@ page import="mate.controller.CreateDriverController" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
                <form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Driver name<input type="text" name="name">
    Driver license<input type="text" name="licenseNumber">
    <button type="submit" >Confirm</button>
</form>
</body>
</html>
