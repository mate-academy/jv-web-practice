<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
<h1>Create:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/addDriver">
    Name <input type="text" name="name"><br>
    License Number <input type="text" name="license_number"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
