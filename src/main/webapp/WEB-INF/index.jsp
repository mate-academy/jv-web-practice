<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<h1>WELCOME TO TAXI SERVICE</h1>
<h3>Options:</h3>
<form action="${pageContext.request.contextPath}/cars">
    <input type="submit" value="Display Cars">
</form>
<form action="${pageContext.request.contextPath}/drivers">
    <input type="submit" value="Display Drivers">
</form>
<form action="${pageContext.request.contextPath}/manufacturers">
    <input type="submit" value="Display Manufacturers">
</form>
</body>
</html>
