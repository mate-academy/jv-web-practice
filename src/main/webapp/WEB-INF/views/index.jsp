<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main Page</title>
</head>
<body>
<h1>Choose needed option</h1>
<form action="${pageContext.request.contextPath}/cars">
    <input type="submit" value="List of Cars">
</form>
<form action="${pageContext.request.contextPath}/drivers">
    <input type="submit" value="List of Drivers">
</form>
<form action="${pageContext.request.contextPath}/manufacturers">
    <input type="submit" value="List of Manufacturers">
</form>
</body>
</html>