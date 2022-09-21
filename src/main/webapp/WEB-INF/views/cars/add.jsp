<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
    <h1>Create new car</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        <label>Model</label><br>
        <input type="text" name="model"><br>
        <label>Manufacturer ID</label><br>
        <input type="number" name="manufacturer_id"><br>
        <button type="submit">Create car</button>
    </form>
</body>
</html>
