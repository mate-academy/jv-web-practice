<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp"%><br>
<h3>Fill out the form below to add the manufacturer</h3>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name"><br>
    License Number <input type="text" name="licenseNumber"><br>
    <button type="submit">Add Driver</button>
</form>
</body>
</html>
