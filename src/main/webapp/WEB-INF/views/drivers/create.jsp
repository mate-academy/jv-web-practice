<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Create driver: </h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name <input type="text" name="name"><br>
    License number <input type="text" name="license_number"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
