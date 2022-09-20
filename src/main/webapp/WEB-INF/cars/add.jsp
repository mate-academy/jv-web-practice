<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Enter a new Car parameters</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br/>
    Manufacturer id <input type="text" name="manufacturer_id"><br/>
    <button type="submit">Send</button>
</form>
<h2>If you want creat manufacturer click here</h2>
<button><a href="${pageContext.request.contextPath}/manufacturer/create">Create manufacturer</a></button>
</body>
</html>
