<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Hello, cars!</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers">
    Name <input type="text" name="driver_name"><br>
    License number <input type="text" name="license_number">
    <button type="submit">Confirm</button>
</form>
</body>
</html>
