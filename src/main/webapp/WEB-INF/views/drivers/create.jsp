
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating a driver</title>
</head>
<body>
    <p>Form for creating a driver</p>
    <form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Driver name<input type="text" name="name">
        <br>
    Driver license<input type="text" name="licenseNumber">
        <br>
    <button type="submit" >Create Driver</button>
    </form>
</body>
</html>
