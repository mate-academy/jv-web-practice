<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../header.jsp"%>
<html>
<head>
    <title>Add new manufacturer</title>
</head>
<body>
<h3>CREATE MANUFACTURER</h3>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Manufacturer Name: <input type="text" name="name"><br><br>
    Country: <input type="text" name="country"><br><br>
    <button type="submit">Create manufacturer</button>
</form>
</body>
</html>
