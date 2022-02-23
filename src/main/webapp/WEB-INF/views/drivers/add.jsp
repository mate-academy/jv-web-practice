<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Create new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label for="name">Driver name:</label><br>
    <input type="text" id="name" name="name"><br>
    <label for="license_number">License number:</label><br>
    <input type="text" id="license_number" name="license_number"><br>
    <button type="submit">Submit</button>
    <button type="reset">Reset</button>
</form>
<br><a href="${pageContext.request.contextPath}/index">Back to index page</a>
</body>
</html>
