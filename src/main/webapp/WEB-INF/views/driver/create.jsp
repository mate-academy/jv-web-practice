<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new driver</title>
</head>
<body>
<h1>Fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name <input type="text" name="name"><br>
    Driver licenseNumber <input type="text" name="licenseNumber"><br>
    <button type="create">Create</button>
</form>
</body>
</html>
