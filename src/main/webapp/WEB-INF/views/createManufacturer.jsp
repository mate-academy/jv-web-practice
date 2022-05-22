<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>ADD MANUFACTURER</h1>
<form name = "loginForm" method = "post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name: <input type="text" name="name"> <br>
    Country: <input type="text" name="country"> <br>
    <input type="submit" value="ADD">
</form>
<div>
    <button class="w3-btn w3-round-large" onclick="location.href='/index'">INDEX</button>
</div>
</body>
</html>
