<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
    <h1>Create new driver:</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/create">
        Name:<input type="text" name="driverName"><br>
        License number:<input type="text" name="licenseNumber"><br>
        <button type="submit">Create</button>
    </form>
    <p><a href="${pageContext.request.contextPath}/index">Back to menu</a></p>
</body>
</html>
