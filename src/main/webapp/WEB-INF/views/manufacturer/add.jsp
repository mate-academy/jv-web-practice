<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Create manufacturer</h1>
<h4 style="color: green">${message}</h4>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <label>
        <input type="text" name="manufacturer_name" placeholder="Manufacturer name">
        <input type="text" name="manufacturer_country" placeholder="Manufacturer country">
    </label>
    <button type="submit">Create</button>
</form>
</body>
</html>
