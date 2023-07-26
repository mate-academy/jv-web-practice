<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Create driver</title>
</head>
<body>
<h1> Fill out the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Driver name <input type="text" name="driver_name"><br>
    License number <input type="text" name="license_number"><br>
    <button type="submit"> Confirm</button>
</form>
</body>
</html>
