<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service: add driver<</title>
</head>
<body>
<h1>Create a new driver:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver's name <input type="text" name="name"><br>
    License number <input type="text" name="license_number"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
