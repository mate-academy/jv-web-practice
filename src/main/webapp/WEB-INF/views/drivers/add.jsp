<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver registration</title>
</head>
<body>
<h1>Please fill the fields:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name <input type="text" name="name"><br>
    Driver license number <input type="text" name="license_number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
