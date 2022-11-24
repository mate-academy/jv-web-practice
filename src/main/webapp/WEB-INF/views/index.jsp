<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
    <h1>WELCOME TO OUT TAXI SERVICE</h1>
    <h3>Options:</h3>
    <form action="${pageContext.request.contextPath}/cars">
        <input type="submit" value="Display Cars List">
    </form>
    <form action="${pageContext.request.contextPath}/drivers">
        <input type="submit" value="Display Drivers List">
    </form>
    <form action="${pageContext.request.contextPath}/manufacturers">
        <input type="submit" value="Display Manufacturers List">
    </form>
</body>
</html>
