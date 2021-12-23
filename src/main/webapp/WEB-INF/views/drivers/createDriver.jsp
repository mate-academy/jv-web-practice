<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../header.jsp"%>
<html>
<head>
    <title>Add new driver</title>
</head>
<body>
<h3>CREATE DRIVER</h3>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver Name: <input type="text" name="driver_name"><br><br>
    License Number: <input type="text" name="license_number"><br><br>
    <button type="submit">Create driver</button>
</form>
</body>
</html>
