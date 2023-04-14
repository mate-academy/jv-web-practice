<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Create manufacturer</title>
</head>

<body>
<h2>Create manufacturer</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    <label for="manufacturer_name">Name</label><br>
    <input type="text" id="manufacturer_name" name="manufacturer_name"><br>
    <label for="manufacturer_country">Country</label><br>
    <input type="text" id="manufacturer_country" name="manufacturer_country"><br><br>
    <input type="submit" value="Save">
    <input type="button" value="Return" onclick="history.back()">
</form>
</body>
</html>
