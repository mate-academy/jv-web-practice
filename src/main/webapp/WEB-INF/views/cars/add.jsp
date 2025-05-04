<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    MODEL <input type="text" name="model"><br>
    MANUFACTURER_ID <input type="text" name="manufacturer_id"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
