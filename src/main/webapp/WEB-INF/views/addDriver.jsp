<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a driver</title>
</head>
<body>
<h3>Fill the form to create a new driver.</h3>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver's name <input type="text" name="name"><br/><br/>
    Driver's license number <input type="text" name="license_number"><br/><br/>
    <button type="submit">Create driver</button>
</form>
</body>
</html>
