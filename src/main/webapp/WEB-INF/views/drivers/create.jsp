<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add new driver</title>
</head>
<body>
<h1>Add new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name"><br>
    License number <input type="text" name="licenseNumber"><br>
    <button type="submit">Save</button>
</form>
<a href="${pageContext.request.contextPath}/drivers/drivers">Back</a>
<a href="${pageContext.request.contextPath}/index">Home</a>
</body>
</html>
