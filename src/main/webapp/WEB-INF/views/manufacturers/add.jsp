<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturers</title>
</head>
<body>
<h1>Create manufacturer :</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name : <input type="text" name="manufacturer_name"><br>
    County : <input type="text" name="county"><br>
    <button type="submit">Confirm</button>
</form>
<form method="get" action="/cars/add">
    <button type="submit">add car</button>
</form>
</body>
</html>
