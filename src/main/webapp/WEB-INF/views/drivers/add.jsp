<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label>Name</label><br>
    <label>
        <input type="text" name="name">
    </label><br>
    <label>License number</label><br>
    <label>
        <input type="text" name="license_number">
    </label><br>
    <button type="submit">Confirm</button>
</form>
<form method="get" action="${pageContext.request.contextPath}/index">
    <button type="submit">Cancel</button>
</form>
</body>
</html>
