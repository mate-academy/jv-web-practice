<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h1>ADD MANUFACTURER</h1>
<form name = "addForm" method = "post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name: <input type="text" name="name"> <br>
    Country: <input type="text" name="country"> <br>
    <input type="submit" value="ADD">
</form>
<div>
    <button class=".btn" onclick="location.href='/index'">INDEX</button>
</div>
</body>
</html>
