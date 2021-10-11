<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Yelinskyi</title>
</head>
<body>
<h1>Create new manufacturer!</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer Name <input type="text" name="manufacturer_name">
    Country <input type="text" name="country">
    <button type="submit">Confirm</button>
</form>
</body>
</html>
