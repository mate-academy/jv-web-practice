<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<form method="get" action="${pageContext.request.contextPath}/manufacturers/manufacturerList">
    <button type="submit"><--</button>
</form>
<h4>Create a Manufacturer</h4>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/manufacturerCreate">
    Manufacturer Name <br><input type="text" name="manufacturerName"><br>
    Manufacturer Country Of Origin <br><input type="text" name="manufacturerCountry"><br>
    <br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
