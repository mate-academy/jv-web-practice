<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Fill in all the fields</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    <label for="name">Name</label><br>
    <input type="text" id="name" name="name"><br>
    <label for="license_number">License number</label><br>
    <input type="text" id="license_number" name="license_number"><br><br>
    <input type="submit" value="Submit">
    <input type="reset" value="Reset">
</form>
</body>
</html>
