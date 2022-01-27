<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration a new driver</title>
</head>
<body>
<h1>Input new driver data</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name : <input type="text" name="driver_name"><br>
    Driver license : <input type="text" name="driver_license"><br>
    <button type="submit">confirm</button>
</form>
<h3><a href="${pageContext.request.contextPath}/index">Home page</a></h3>
</body>
</html>
