<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating new manufacturer</title>
</head>
<body>
<h1 align = "center">Input information about new manufacturer :</h1>
<form align = "center" method= "post" action = "${pageContext.request.contextPath}/manufacturers/add">
    Name : <input type = "text" name = "name"><br>
    <br>
    Country : <input type = "text" name = "country"><br>
    <br>
    <button type = "submit">Confirm</button>
</form>
</body>
</html>
