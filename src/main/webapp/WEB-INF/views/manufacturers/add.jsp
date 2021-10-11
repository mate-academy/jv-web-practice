<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Taxi Service - Manufacturer creation</h1>
<h2>To create a new manufacturer, please, fulfill the form below:</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name: <input type="text" name="manufacturer_name"><br>
    Country: <input type="text" name="country"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
