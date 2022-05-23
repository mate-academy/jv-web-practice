<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>ADD DRIVER</h1>
<form name = "addForm" method = "post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name: <input type="text" name="name"> <br>
    Driver license number: <input type="text" name="license_number"> <br>
    <input type="submit" value="ADD">
</form>
<div>
    <button onclick="location.href='/index'">INDEX</button>
</div>
</body>
</html>
