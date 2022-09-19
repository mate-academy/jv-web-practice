<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label>Model</label><br>
    <label>
        <input type="text" name="model">
    </label><br>
    <label>Manufacturer ID</label><br>
    <label>
        <input type="number" name="manufacturer_id">
    </label>
    <button type="submit">Confirm</button>
</form>
<form method="get" action="${pageContext.request.contextPath}/index">
    <button type="submit">Cancel</button>
</form>
</body>
</html>
