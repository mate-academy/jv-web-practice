<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturers</title>
</head>
<body>
<h1>Please add manufacturer information</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="manufacturer_name">
    Country <input type="text" name="manufacturer_country">
    <button type="submit">Save</button>
</form>
</body>
</html>
