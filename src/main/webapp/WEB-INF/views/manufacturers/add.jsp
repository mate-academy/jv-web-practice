<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
    <h1>Create manufacturer</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
        Manufacturer name <input type="text" name="manufacturer_name"><br>
        Manufacturer country <input type="text" name="manufacturer_country"><br>
        <button type="submit">Create</button>
    </form>
</body>
</html>
