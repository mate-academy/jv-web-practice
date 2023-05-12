<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Create manufacturer</title>
</head>
<body>
<h1> Fill out the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    manufacturer name <input type="text" name="manufacturer_name"><br>
    manufacturer country <input type="text" name="manufacturer_country"><br>
    <button type="submit"> Confirm</button>
</form>
</body>
</html>
