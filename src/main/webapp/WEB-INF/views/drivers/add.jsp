<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label>Name</label><br>
    <input type="text" name="name"><br>
    <label>License number</label><br>
    <input type="text" name="license_number"><br>
    <button type="submit">Confirm</button>
</form>
<form method="get" action="${pageContext.request.contextPath}/index">
    <button type="submit">Cancel</button>
</form>
</body>
</html>
