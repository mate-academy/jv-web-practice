<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating a driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name <input type="text" name="name"><br/>
    License number <input type="text" name="license_number"><br/>
    <button type="submit">Create a driver</button>
</form>
</body>
</html>
