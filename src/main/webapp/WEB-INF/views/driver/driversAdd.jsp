<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
    <style>
        <%@include file="/WEB-INF/css/inputForm.css" %>
    </style>
</head>
<body>
<h1>Add driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label for="name">Name:</label>
        <input type="text" name="name" id="name"><br>
    <label for="licenseNumber">License Number:</label>
        <input type="text" name="licenseNumber" id="licenseNumber"><br>
        <input type="submit" value="Create">
</form>
</body>
</html>
