<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add new driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name"><br>
    License number <input type="text" name="license_number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
