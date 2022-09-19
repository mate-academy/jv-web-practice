<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Add your manufacturer below</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type ="text" name="name">
    Country <input type ="text" name="country">
    <button type="submit">Confirm</button>
</form><form action="${pageContext.request.contextPath}/manufacturers">
    <input type="submit" value="Return to previous page">
</form>
<form action="${pageContext.request.contextPath}/index">
    <input type="submit" value="Return to First page">
</form>
</body>
</html>
