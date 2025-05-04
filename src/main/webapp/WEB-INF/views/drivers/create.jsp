<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Name <input type="text" name="name"><br>
    License_Number <input type="text" name="license_number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
