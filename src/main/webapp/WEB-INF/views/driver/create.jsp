<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<h1>Please, fill the form below:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Driver Name <input type="text", name="name"><br>
    License Number <input type="text", name="licenseNumber"><br>
    <button type="submit">Create!</button>
</form>
</body>
</html>
