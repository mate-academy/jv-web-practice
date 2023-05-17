<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Driver</title>
</head>
<body>
<h1>Please enter your data:</h1>

<form method="post" action="${pageContext.request.contextPath}/driver/update">
    Driver id <input type="text" name="Id"><br>
    Driver name <input type="text" name="Driver name"><br>
    License Number <input type="tetx" name="License Number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
