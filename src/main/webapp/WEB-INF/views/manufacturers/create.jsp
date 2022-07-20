<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>manufacturerCreation </title>
</head>
<body>
<h1>Wanna create some new manufacturer?</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Manufacturer's name: <input type="text" name="name">
    Manufacturer's country: <input type="text" name="country">
    <button type="submit">Create manufacturer!</button>
</form>
</body>
</html>
