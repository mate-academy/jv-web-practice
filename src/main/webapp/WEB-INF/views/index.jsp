<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Hello, mates!</h1>
<form action="${pageContext.request.contextPath}/cars/create">
    <input type="submit" value="Create car"/>
</form>
<form action="${pageContext.request.contextPath}/cars/drivers/add">
        <input type="submit" value="Add car driver"/>
</form>
<form action="${pageContext.request.contextPath}/drivers/create">
        <input type="submit" value="Create driver"/>
</form>
<form action="${pageContext.request.contextPath}/drivers/all">
    <input type="submit" value="Get all driver"/>
</form>
<form action="${pageContext.request.contextPath}/manufacturers/create">
    <input type="submit" value="Create manufacturer"/>
</form>
</body>

</html>
