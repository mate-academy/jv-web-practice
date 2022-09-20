<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <div style="width: 40%"><p>Enter name <input name="name" type="text" style="float: right"></p></div>
    <div style="width: 40%"><p>Enter license number <input name="licenseNumber" type="text" style="float: right"></p></div>
    <input name ="button" type="submit" value="ADD">
</form>
</body>
</html>
