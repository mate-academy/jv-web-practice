<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Driver Creation</title>
</head>
<body>
<h1>Fill The Form Below:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name"><br>
    License Number <input type="text" name="licenseNumber"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
