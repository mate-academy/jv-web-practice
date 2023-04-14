<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/addDriver">
    DRIVER NAME <input type="text" name="name"><br>
    LICENSE NUMBER <input type="text" name="licenseNumber"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
