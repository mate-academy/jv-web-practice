<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Crate Manufacturer</title>
</head>
<body>
<h1>Create manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer_name <input type="text" name="name"><br>
    Country_name <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
