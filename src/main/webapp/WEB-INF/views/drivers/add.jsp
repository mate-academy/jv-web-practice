<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>To add driver please fill the form</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name"><br>
    LicenseNumber <input type="text" name="licenseNumber"><br>
    <button type="submit">Add driver</button>
</form>
</body>
</html>
