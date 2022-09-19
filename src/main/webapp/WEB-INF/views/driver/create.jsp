<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
    <h1>Enter new driver data:</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/create">
        Driver name           <input type="text" name="name"><br>
        Driver license number <input type="text" name="licenseNumber"><br>
        <button type="submit">Create</button>
    </form>
</body>
</html>
