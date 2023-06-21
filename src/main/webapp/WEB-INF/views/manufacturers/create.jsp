<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style><%@include file="/WEB-INF/views/css/style.css"%> </style>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Create manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input class="form-input" type="text" name="name"><br>
    Country <input class="form-input" type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
