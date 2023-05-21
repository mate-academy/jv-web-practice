<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp"%><br>
<h3>Fill out the form below to add the manufacturer</h3>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Add Manufacturer</button>
</form>
</body>
</html>
