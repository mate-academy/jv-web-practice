<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Add your driver below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type ="text" name="name">
    License number <input type ="text" name="license_number">
    <button type="submit">Confirm</button>
</form>
<form action="${pageContext.request.contextPath}/drivers">
    <input type="submit" value="Return to previous page">
</form>
<form action="${pageContext.request.contextPath}/index">
    <input type="submit" value="Return to First page">
</form>
</body>
</html>
