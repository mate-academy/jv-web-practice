<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver creating</title>
</head>
<body>
<h1>Please the form for creating below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name ="name"><br>
    LicenseNumber <input type ="text" name ="licenseNumber"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
