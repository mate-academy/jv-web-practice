<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Driver creation page</title>
</head>
<body>
<h1>Please fill required information below:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Driver's name: <input type="text" name="username"><br>
    License Number: <input type="text" name="licenseNumber"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>