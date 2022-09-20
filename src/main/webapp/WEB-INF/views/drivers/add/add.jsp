<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new diver</title>
</head>
<body>
<h1>Fill in the information about the new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name"><br>
    License number <input type="text" name="license_number"><br>
    <button type="submit">Submit</button>
</form>
<br>
<a href="${pageContext.request.contextPath}/">Back to home</a>
</body>
</html>
