<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a driver</title>
</head>
<body>
<h1>Please fill the form to create a driver</h1>
<form name="post" method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name of driver: <input type="text" name="name"/> <br/>
    License number: <input type="text" name="licenseNumber"/> <br/>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
