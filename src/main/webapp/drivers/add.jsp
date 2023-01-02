<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Adding new driver to database</h1>
<h2>Fill the fields below</h2>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    name <input type="text" name="name"><br>
    license number <input type="text" name="licenseNumber"><br>
    <button type="submit">Confirm</button>
</form>
<h1>${message}</h1>
</body>
</html>
